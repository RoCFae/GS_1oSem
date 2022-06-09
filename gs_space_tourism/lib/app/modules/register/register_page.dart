import 'package:flutter/material.dart';
import 'package:gs_space_tourism/utils/export.dart';

import '../../components/buttons.dart';
import '../../components/textform/textform.dart';
import '../home/home_page.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(
          registerPage,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              CustomTextInput(
                textEditController: _nameController,
                hintTextString: userNameForms,
                inputType: InputType.Default,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon:
                    Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: errorUserName,
                labelText: userName,
              ),
              CustomTextInput(
                textEditController: _emailController,
                hintTextString: emailForms,
                inputType: InputType.Email,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 24,
                themeColor: Theme.of(context).primaryColor,
                prefixIcon:
                    Icon(Icons.email, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: errorEmail,
                labelText: email,
              ),
              CustomTextInput(
                  textEditController: _passwordController,
                  hintTextString: passwordForms,
                  inputType: InputType.Password,
                  enableBorder: true,
                  cornerRadius: 48.0,
                  maxLength: 16,
                  prefixIcon:
                      Icon(Icons.lock, color: Theme.of(context).primaryColor),
                  themeColor: Theme.of(context).primaryColor,
                  textColor: Colors.black,
                  errorMessage: errorPassword,
                  labelText: password),
              CustomTextInput(
                  textEditController: _phoneController,
                  hintTextString: phoneNumberForms,
                  inputType: InputType.Number,
                  enableBorder: true,
                  cornerRadius: 48.0,
                  maxLength: 10,
                  themeColor: Theme.of(context).primaryColor,
                  prefixIcon:
                      Icon(Icons.phone, color: Theme.of(context).primaryColor),
                  textColor: Colors.black,
                  errorMessage: errorPhoneNumber,
                  labelText: phoneNumber),
              const SizedBox(
                height: 20,
              ),
              DefaultButton(
                buttonText: newAccountBtn,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
