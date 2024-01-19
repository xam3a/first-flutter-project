import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  RxInt _y = 0.obs;
  int _z = 0;

  int get x => _x;
  RxInt get y => _y;
  int get z => _z;

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y++;
  }

  void decreaseY() {
    _y--;
  }

  int AdditionXandY() {
    _z = _x + _y.value;
    return _z;
  }
}
