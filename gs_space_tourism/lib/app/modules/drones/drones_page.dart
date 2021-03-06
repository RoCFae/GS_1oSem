import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/infos/info1_page.dart';

import '../../../utils/ui_text.dart';
import '../../components/buttons.dart';
import '../../components/page.dart';
import '../home/home_page.dart';

class DronePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: drones,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Image.asset(
                'assets/images/drone.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const Text(
              droneText,
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
                    builder: ((context) => InfoPage1()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
