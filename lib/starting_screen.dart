import 'package:flutter/material.dart';
import 'tools/big_menu_button.dart';
import 'pages/newCrzPage.dart';
import 'pages/todoPage.dart';
import 'tools/constants.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Craziness"), backgroundColor: MyColors.titleBackgroundColor),
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: MyColors.backgroundColor,

            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView(
                children: const [
                  Column(
                    children: [
                      SizedBox(height: 20.0),
                      BigMenuButton(text: "Find Me New Craziness via AI",page: newCrzPage()),
                      BigMenuButton(text: "To Do List",page: TodoPage()),
                      BigMenuButton(text: "History",page: newCrzPage()),
                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
