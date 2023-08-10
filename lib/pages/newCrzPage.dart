import 'package:flutter/material.dart';
import '../tools/big_menu_button.dart';
import '../tools/constants.dart';

class newCrzPage extends StatelessWidget {
  const newCrzPage({super.key});

  final Color titleBackgroundColor = const Color(0xff007f5f);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Craziness"),
          backgroundColor: titleBackgroundColor),
      body: Container(
          color: MyColors.backgroundColor,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                      child: const Center(
                          child: Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Text("Japonya'da kerhaneye git")))),
                ),
                const Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BigMenuButton(text: "Find New", isButtonMode: true),
                        BigMenuButton(
                            text: "add to \"to-do list\"", isButtonMode: true),
                        BigMenuButton(
                            text: "Edit Parameters", isButtonMode: true),
                        BigMenuButton(
                            text: "Suggest New Activity", isButtonMode: true),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
