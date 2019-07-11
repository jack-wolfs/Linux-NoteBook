//
// Created by xuqi on 2019-07-11.
//

#ifndef CV2X_3RDPART_LINUXTOOLKIT_SRC_UTIL_TIMETICKER_H_
#define CV2X_3RDPART_LINUXTOOLKIT_SRC_UTIL_TIMETICKER_H_

#include <assert.h>
#include "Logger.h"
#include "Util.h"

namespace toolkit {

class Ticker {
 public:
  Ticker(int64_t minMs = 0,
         LogContextCapturer &&ctx = LogContextCapturer(Logger::Instance(), LWarn, __FILE__, "", __LINE__),
         bool printLog = false) : _ctx(ctx) {
    if (!printLog) {
      _ctx.clear();
    }
    _created = _begin = getCurrentMillisecond();
    _minMs = minMs;
  }
  ~Ticker() {
    int64_t tm = createdTime();
    if (tm > _minMs) {
      _ctx << "take time:" << tm << "ms" << endl;
    } else {
      _ctx.clear();
    }
  }
  uint64_t elapsedTime() {
    return getCurrentMillisecond() - _begin;
  }
  uint64_t createdTime() {
    return getCurrentMillisecond() - _created;
  }
  void resetTime() {
    _begin = getCurrentMillisecond();
  }
 private:
  uint64_t _begin;
  uint64_t _created;
  LogContextCapturer _ctx;
  const char *_where;
  int64_t _minMs;

};
class SmoothTicker {
 public:
  SmoothTicker(uint64_t resetMs = 10000) {
    _resetMs = resetMs;
    _ticker.resetTime();
  }
  ~SmoothTicker() {
  }
  uint64_t elapsedTime() {
    auto nowTime = _ticker.elapsedTime();
    if (_firstTime == 0) {
      _firstTime = nowTime;
      _lastTime = nowTime;
      _pktCount = 0;
      return nowTime;
    }
    uint64_t elapseTime = (nowTime - _firstTime);
    uint64_t retTime = _lastTime + elapseTime / ++_pktCount;
    _lastTime = retTime;
    if (elapseTime > _resetMs) {
      _firstTime = 0;
    }
    return retTime;
  }
  void resetTime() {
    _firstTime = 0;
    _pktCount = 0;
    _lastTime = 0;
    _ticker.resetTime();
  }
 private:
  uint64_t _firstTime = 0;
  uint64_t _pktCount = 0;
  uint64_t _lastTime = 0;
  uint64_t _resetMs;
  Ticker _ticker;
};

#if !defined(NDEBUG)
#define TimeTicker() Ticker __ticker(5,WarnL,true)
#define TimeTicker1(tm) Ticker __ticker1(tm,WarnL,true)
#define TimeTicker2(tm, log) Ticker __ticker2(tm,log,true)
#else
#define TimeTicker()
#define TimeTicker1(tm)
#define TimeTicker2(tm,log)
#endif

} /* namespace toolkit */


#endif //CV2X_3RDPART_LINUXTOOLKIT_SRC_UTIL_TIMETICKER_H_
