import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
