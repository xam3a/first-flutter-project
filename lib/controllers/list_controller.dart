import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _List = [].obs;

  RxList get List => _List;

  void setValues(int x) {
    _List.add(x);
    print(_List);
  }
}
