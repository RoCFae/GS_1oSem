import 'package:flutter/material.dart';
import 'package:gs_space_tourism/utils/export.dart';

import '../../components/buttons.dart';
import '../../components/clickable_text.dart';
import '../../components/textform/textform.dart';
import '../home/home_page.dart';
import '../register/register_page.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              CustomTextInput(
                textEditController: _emailController,
                hintTextString: emailForms,
                inputType: InputType.Email,
                enableBorder: true,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon: Icon(Icons.email, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: errorEmail,
                labelText: email, 
                themeColor: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextInput(
                textEditController: _nameController,
                hintTextString: passwordForms,
                inputType: InputType.Password,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon: Icon(Icons.lock, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: errorPassword,
                labelText: password,
              ),
              const SizedBox(
                height: 50.0,
              ),
              DefaultButton(
                buttonText: loginBtn,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              StandardClickableText(
                label: noAccountBtn,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => RegisterScreen()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
