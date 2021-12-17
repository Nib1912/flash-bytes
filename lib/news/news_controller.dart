import 'package:flash_bytes/data/models/news_model.dart';
import 'package:flash_bytes/data/services/api_service.dart';
import 'package:flash_bytes/sportsCategory/category_controller.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  CategoryController controller = Get.put(CategoryController());
  var totalResults = 0.obs;
  var urlToImage = [].obs;
  var title = [].obs;
  var isLoading = true.obs;

  Future<NewsModel?> getnews() async {
    var res = await APIService().fetchNews(controller.str.toString());

    totalResults.value = res!.totalResults!;
    for (var i = 0; i < res.articles!.length; i++) {
      urlToImage.insert(i, res.articles![i].urlToImage);
      title.insert(i, res.articles![i].title);
    }
    isLoading.value = false;
    Get.forceAppUpdate();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getnews();
    Get.forceAppUpdate();
  }
}
