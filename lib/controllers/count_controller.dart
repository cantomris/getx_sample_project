import 'package:get/get.dart';


enum actionType {Increment, Decrement}
class CountController extends GetxController{
  var count = 0.obs;
  void increment() => count++;
  void decrement() => count--;
  void clear() {
    var _count = int.parse('0');
    count = _count as RxInt;
  }
}