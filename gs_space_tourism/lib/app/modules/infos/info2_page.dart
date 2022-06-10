import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/drones/drones_page.dart';
import 'package:gs_space_tourism/app/modules/infos/info1_page.dart';
import 'package:gs_space_tourism/app/modules/infos/info3_page.dart';

import '../../../utils/ui_text.dart';
import '../../components/buttons.dart';
import '../../components/page.dart';

class InfoPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: priceSpace,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              priceSpaceText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20),
            ),
            const SizedBox(
              height: 35.0,
            ),
            DefaultButton(
              buttonText: nextPage,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => InfoPage3()),
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
