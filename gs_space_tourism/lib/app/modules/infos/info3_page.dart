import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/drones/drones_page.dart';
import 'package:gs_space_tourism/app/modules/home/home_page.dart';
import 'package:gs_space_tourism/app/modules/infos/info1_page.dart';

import '../../../utils/ui_text.dart';
import '../../components/buttons.dart';
import '../../components/page.dart';

class InfoPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: difficultsSpace,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              difficultsSpaceText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20),
            ),
            const SizedBox(
              height: 35.0,
            ),
            DefaultButton(
              buttonText: home,
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
              height: 25.0,
            ),
            DefaultButton(
              buttonText: previusPage,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => InfoPage1()),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
