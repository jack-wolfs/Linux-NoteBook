//
// Created by root on 19-7-11.
//

#ifndef CV2X_DATAPOOL_H
#define CV2X_DATAPOOL_H
#include <queue>
#include <mutex>
#include "Util/util.h"
#include "Thread/semaphore.h"

using namespace toolkit;

namespace v2x {

template <typename T>
class MsgQueue
{
public:

    template <typename C>
    void push(C &&data) {
        {
            lock_guard<decltype(_mutex)> lock(_mutex);
            _queue.emplace(std::forward<C>(data));
        }
        _sem.post();
    }

    template <typename C>
    bool get_data(C &data) {
        _sem.wait();
        lock_guard<decltype(_mutex)> lock(_mutex);

        if (_queue.size() == 0) {
            return  false;
        }
        data = std::move(_queue.front());
        _queue.pop();
        return true;
    }
private:
    std::queue<T> _queue;
    mutable mutex _mutex;
    semaphore _sem;

};

}

#endif //CV2X_DATAPOOL_H