import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.click, required this.chooseAnswer});
  final void Function()? click;
  final String chooseAnswer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () {
            click!();
          },
          child: Text(
            chooseAnswer,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          )),
    );
  }
}
