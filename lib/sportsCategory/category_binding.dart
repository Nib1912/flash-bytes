import 'package:flash_bytes/sportsCategory/category_controller.dart';
import 'package:get/get.dart';
class CategoryBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CategoryController());
  }
}