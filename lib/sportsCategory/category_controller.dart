import 'package:flash_bytes/news/news_controller.dart';
import 'package:get/get.dart';
import 'package:flash_bytes/sportsCategory/category.dart';
class CategoryController extends GetxController {
  var select = Categories.sports.obs;
  var str = 'sports'.obs;
  togleSelectSports(){
    select.value=Categories.sports;
    str.value='sports';
   Get.find<NewsController>().getnews();

  }
  togleSelectPolitics(){
    select.value=Categories.politics;
    str.value='politics';
    Get.find<NewsController>().getnews();

  }
  togleSelectTechnology(){
    select.value=Categories.technology;
    str.value='technology';
    Get.find<NewsController>().getnews();

  }
  togleSelectCinema(){
    select.value=Categories.cinema;
    str.value='entertainment';
    Get.find<NewsController>().getnews();

  }
}