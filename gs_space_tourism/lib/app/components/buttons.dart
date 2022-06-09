import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;

  DefaultButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),




              
            ),
          ),
        ),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(255, 15, 19, 60),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

