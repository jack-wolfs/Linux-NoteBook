//
// Created by xuqi on 2019-07-13.
//

#include "V2xGNSSProducer.h"
V2xGNSSProducer::V2xGNSSProducer(Queue::Ptr &queue)
:Producer()
{
  _cur_car.setSize(100);
  _data_queue = queue;
}

V2xGNSSProducer::~V2xGNSSProducer() {

}

void V2xGNSSProducer::recv() {

  while (1) {
    static int count = 0;

    count++;
    ValuePtr car = _cur_car.obtain();
    string info = StrPrinter << "车辆数据包 No." << count;

    car->assign(info);
    DebugL << "新数据包来了 No." << count << " 放入地址：" << car;

    _data_queue->push(car);

    usleep(1000*100);

  }
}
