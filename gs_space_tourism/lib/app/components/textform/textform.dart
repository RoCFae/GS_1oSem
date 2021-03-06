import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'textform_formator.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput(
      {required this.hintTextString,
      required this.textEditController,
      required this.inputType,
      this.enableBorder = true,
      required this.themeColor,
      required this.cornerRadius,
      required this.maxLength,
      required this.prefixIcon,
      required this.textColor,
      required this.errorMessage,
      required this.labelText});

  final hintTextString;
  final TextEditingController textEditController;
  final InputType inputType;
  final bool enableBorder;
  final Color themeColor;
  final double cornerRadius;
  final int maxLength;
  final Widget prefixIcon;
  final Color textColor;
  final String errorMessage;
  final String labelText;

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}
class _CustomTextInputState extends State<CustomTextInput> {
  bool _isValidate = true;
  String validationMessage = '';
  bool visibility = false;
  int oldTextSize = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: TextField(
        controller: widget.textEditController,
        decoration: InputDecoration(
          hintText: widget.hintTextString as String,
          errorText: _isValidate ? null : validationMessage,
          counterText: '',
          border: getBorder(),
          enabledBorder: widget.enableBorder ? getBorder() : InputBorder.none,
          focusedBorder: widget.enableBorder ? getBorder() : InputBorder.none,
          labelText: widget.labelText,
          labelStyle: getTextStyle(),
          prefixIcon: widget.prefixIcon,
          suffixIcon: getSuffixIcon(),
        ),
        onChanged: checkValidation,
        keyboardType: getInputType(),
        obscureText: widget.inputType == InputType.Password && !visibility,
        maxLength:  widget.maxLength,
        style: TextStyle(
          color: widget.textColor,
        ),
        inputFormatters: [getFormatter()],
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(widget.cornerRadius)),
      borderSide: BorderSide(width: 2, color: widget.themeColor),
      gapPadding: 2,
    );
  }

  TextInputFormatter getFormatter() {
      return TextInputFormatter.withFunction((oldValue, newValue) => newValue);
  }

  TextStyle getTextStyle() {
    return TextStyle(color: widget.themeColor);
  }

  void checkValidation(String textFieldValue) {
    if (widget.inputType == InputType.Default) {
      _isValidate = textFieldValue.isNotEmpty;
      validationMessage = widget.errorMessage;
    } else if (widget.inputType == InputType.Email) {
      _isValidate = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(textFieldValue);
      validationMessage = widget.errorMessage;
    } else if (widget.inputType == InputType.Number) {
      _isValidate = textFieldValue.length == widget.maxLength;
      validationMessage = widget.errorMessage;
    } else if (widget.inputType == InputType.Password) {
      _isValidate = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(textFieldValue);
      validationMessage = widget.errorMessage;
    } 
    oldTextSize = textFieldValue.length;
    setState(() {});
  }
  TextInputType getInputType() {
    switch (widget.inputType) {
      case InputType.Default:
        return TextInputType.text;

      case InputType.Email:
        return TextInputType.emailAddress;

      case InputType.Number:
        return TextInputType.number;

      default:
        return TextInputType.text;
    }
  }

  // get max length of text
  int getMaxLength() {
    switch (widget.inputType) {
      case InputType.Default:
        return 36;

      case InputType.Email:
        return 36;

      case InputType.Number:
        return 10;

      case InputType.Password:
        return 24;

      default:
        return 36;
    }
  }

  Icon getPrefixIcon() {
    switch (widget.inputType) {
      case InputType.Default:
        return Icon(
          Icons.person,
          color: widget.themeColor,
        );

      case InputType.Email:
        return Icon(
          Icons.email,
          color: widget.themeColor,
        );

      case InputType.Number:
        return Icon(
          Icons.phone,
          color: widget.themeColor,
        );

      case InputType.Password:
        return Icon(
          Icons.lock,
          color: widget.themeColor,
        );


      default:
        return Icon(
          Icons.person,
          color: widget.themeColor,
        );
    }
  }

  Widget getSuffixIcon() {
    if (widget.inputType == InputType.Password) {
      return IconButton(
        onPressed: () {
          visibility = !visibility;
          setState(() {});
        },
        icon: Icon(
          visibility ? Icons.visibility : Icons.visibility_off,
          color: widget.themeColor,
        ),
      );
    } else {
      return const Opacity(opacity: 0, child: Icon(Icons.phone));
    }
  }
}

//input types
enum InputType { Default, Email, Number, Password }
