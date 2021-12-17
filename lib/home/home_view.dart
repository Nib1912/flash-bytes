import 'package:flash_bytes/news/news_view.dart';
import 'package:flash_bytes/sportsCategory/category_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlashBytes'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trends',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CategoryView(),
            NewsView(),
          ],
        ),
      ),
    );
  }
}
