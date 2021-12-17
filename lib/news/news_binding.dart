import 'package:flash_bytes/news/news_controller.dart';
import 'package:get/get.dart';
class NewsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NewsController());
  }
}