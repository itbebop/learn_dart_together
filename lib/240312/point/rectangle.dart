import 'dart:math';

import 'point.dart';

class Rectangle {
  final double _width;
  final double _height;

  // topLeft, bottoomRight 변수로 선언할 필요없었음
  Rectangle({required Point topLeft, required Point bottomRight})
      : _height = (topLeft.y - bottomRight.y).abs(),
        _width = (topLeft.x - bottomRight.x).abs();
  // abs() 함수 -> 절대값
  // height, width 계산을 생성자 안에서 해야

  double getExtent() {
    double result = _height * _width;
    return result;
  }

  double getRound() {
    double result = 2 * (_height + _width);
    return result;
  }
}
