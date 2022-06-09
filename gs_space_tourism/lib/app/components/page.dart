import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/components/side_bar.dart';

import '../../utils/padding_sizes.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String pageTile;

  StandardPage({required this.body, required this.pageTile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          pageTile,
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}
