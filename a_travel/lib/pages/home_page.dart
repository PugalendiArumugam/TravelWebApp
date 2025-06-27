import 'package:a_travel/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // main
          Container(
            height: 60.0,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, CustomColor.bgLight1],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Text("Pugalendi"),
                Spacer(),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(onPressed: () {}, child: Text("Button")),
                  ),
              ],
            ),
          ),
          // skills
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          // projects
          Container(height: 500, width: double.maxFinite),
          // contact
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
