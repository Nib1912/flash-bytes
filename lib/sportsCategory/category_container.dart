import 'package:flutter/material.dart';
class CategoryContainer extends StatelessWidget {
  final String? label;
  final Function() tap;
  final Color? clr;

  CategoryContainer({@required this.label, required this.tap, this.clr});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Text(
          label.toString(),
          style: TextStyle(color: Colors.grey),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: clr,
        ),
      ),
    );
  }
}
