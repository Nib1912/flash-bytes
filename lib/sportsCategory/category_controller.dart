import 'package:flash_bytes/data/services/api_service.dart';
import 'package:flash_bytes/news/news_controller.dart';
import 'package:get/get.dart';
import 'package:flash_bytes/sportsCategory/category.dart';
class CategoryController extends GetxController {
  var select = Categories.sports.obs;
  var str = 'sports'.obs;
  togleSelectSports(){
    select.value=Categories.sports;
    str.value='sports';
   APIService().fetchNews(str.toString());
    Get.forceAppUpdate();

    //ctrl.getSportsNews();

    //print(select);

  }
  togleSelectPolitics(){
    select.value=Categories.politics;
    str.value='politics';
    APIService().fetchNews(str.toString());
    Get.forceAppUpdate();


    // controller.getnews();

    //newsService();
    // ctrl.getSportsNews();


    // print(select);
  }
  togleSelectTechnology(){
    select.value=Categories.technology;
    str.value='technology';
    Get.forceAppUpdate();
    //controller.getnews();

    //newsService();



    //print(select);
  }
  togleSelectCinema(){
    select.value=Categories.cinema;
    str.value='entertainment';
    Get.forceAppUpdate();
    //controller.getnews();

    //newsService();


  }
}