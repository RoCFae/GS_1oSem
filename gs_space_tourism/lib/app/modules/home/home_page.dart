import 'package:flutter/material.dart';

import '../../../utils/ui_text.dart';
import '../../components/cards.dart';
import '../../components/page.dart';

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
                //Criar a listagem de Viagens -> TODO
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: ((context) => ),
                //   ),
                // );
              },
              child: HomeCard(
                text: travels,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: () {
                //Criar a pagina dos drones -> TODO
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: ((context) => ),
                //   ),
                // );
              },
              child: HomeCard(
                text: drones,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
