import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'category_container.dart';
import 'package:flash_bytes/sportsCategory/category_controller.dart';
import 'category.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categorycontroller = Get.put(CategoryController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Obx(
          () => CategoryContainer(
              label: 'Sports',
              tap: () {
                categorycontroller.togleSelectSports();
                // if (categorycontroller.select.value == Categories.sports) {
                //   print('Success');
                // } else {
                //   print('error');
                // }
              },
              clr: categorycontroller.select.value == Categories.sports
                  ? Colors.black
                  : Colors.white),
        ),
        Obx(
          () => CategoryContainer(
              label: 'Politics',
              tap: () {
                categorycontroller.togleSelectPolitics();
              },
              clr: categorycontroller.select.value == Categories.politics
                  ? Colors.black
                  : Colors.white),
        ),
        Obx(
          () => CategoryContainer(
              label: 'Cinema',
              tap: categorycontroller.togleSelectCinema,
              clr: categorycontroller.select.value == Categories.cinema
                  ? Colors.black
                  : Colors.white),
        ),
        Obx(
          () => CategoryContainer(
              label: 'Technology',
              tap: categorycontroller.togleSelectTechnology,
              clr: categorycontroller.select.value == Categories.technology
                  ? Colors.black
                  : Colors.white),
        ),
      ],
    );
  }
}
