import 'package:flash_bytes/news/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsController>();
    return Expanded(
      child: Obx(
        () => controller.isLoading == true
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.totalResults.toInt(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 10, 15, 10),
                        padding: EdgeInsets.all(10),
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  controller.urlToImage[index].toString())),
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 400, right: 20, left: 20, bottom: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(1),
                              backgroundBlendMode: BlendMode.color,
                            ),

                              child: Text(
                            controller.title[index].toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  );
                  //child: Image(image: NetworkImage('${apiService.getSportsNews().toString()}'))
                }),
      ),
    );
  }
}
