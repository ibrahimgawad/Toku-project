import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/category_items.dart';
import 'package:flutter_application_1/screens/colors_page.dart';
import 'package:flutter_application_1/screens/family_members_page.dart';
import 'package:flutter_application_1/screens/phrases_page.dart';

import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEF6DB),
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(children: [
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumbersPage();
            }));
          },
          text: "Number",
          color: Color(0xffEF9235),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FamliyMembersPage();
            }));
          },
          text: "FamilyMember",
          color: Color(0xff558B37),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ColorsPage();
            }));
          },
          text: "Colors",
          color: Color(0xff79359F),
        ),
        Category(
          ontap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PhrasesPage();
            }));
          },
          text: "Phrases",
          color: Color(0xff50ADC7),
        ),
      ]),
    );
  }
}
