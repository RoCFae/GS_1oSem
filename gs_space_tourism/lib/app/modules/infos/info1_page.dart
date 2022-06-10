import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/drones/drones_page.dart';
import 'package:gs_space_tourism/app/modules/infos/info2_page.dart';

import '../../../utils/ui_text.dart';
import '../../components/buttons.dart';
import '../../components/page.dart';

class InfoPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: vehiclesSpace,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              vehiclesSpaceText,
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
                    builder: ((context) => InfoPage2()),
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
                    builder: ((context) => DronePage()),
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
