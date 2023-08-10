import 'package:flutter/material.dart';
import 'constants.dart';

class BigMenuButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double height;
  final String text;
  final Widget? page;  // Make the page variable nullable
  final bool isButtonMode;

  const BigMenuButton({
    Key? key,
    required this.text,
    this.page,  // Make the page variable optional
    this.onPressed,
    this.height = 80.0,
    this.isButtonMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            if (!isButtonMode) {
              print("Page mode çalıştı");
              if (page != null) {  // Check if page is provided before navigating
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page!,
                  ),
                );
              }
            } else {
              print("Deneme");
            }
          },
          style: TextButton.styleFrom(
            minimumSize: Size(double.infinity, height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            backgroundColor: MyColors.buttonColor,
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }
}
