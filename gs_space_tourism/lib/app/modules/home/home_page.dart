import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/drones/drones_page.dart';
import 'package:gs_space_tourism/app/modules/travels/travels_page.dart';

import '../../../utils/ui_text.dart';
import '../../components/cards.dart';
import '../../components/page.dart';

Widget _buildPopupDialog(BuildContext context) {
  return  AlertDialog(
    title: const Text(devs),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
         Text(devsText),
      ],
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: home,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const TravelPage()),
                  ),
                );
              },
              child: HomeCard(
                text: travels,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DronePage()),
                  ),
                );
              },
              child: HomeCard(
                text: infos,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
              },
              child: HomeCard(
                text: devs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
