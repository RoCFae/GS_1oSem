import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/travels/traves_controller.dart';

import '../../../utils/ui_text.dart';
import '../../components/buttons.dart';
import '../../components/cards.dart';
import '../../components/page.dart';
import '../../components/formField.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TravelPageState();
  }
}

class _TravelPageState extends State<TravelPage> {
  TextEditingController travelNameController = TextEditingController();
  TextEditingController travelDescriptionController = TextEditingController();
  TextEditingController travelValueController = TextEditingController();
  FocusNode travelNameFocus = FocusNode();
  FocusNode travelDescriptionFocus = FocusNode();
  FocusNode travelValueFocus = FocusNode();

  final travelController = TravelController();

  @override 
  void initState(){
    super.initState();
    travelController.addListener(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: travels,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddTextForm(
              focusNode: travelNameFocus,
              userInputController: travelNameController,
              label: travelName,
              onEditingComplete: () {
                travelValueFocus.nextFocus();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AddTextForm(
              focusNode: travelDescriptionFocus,
              userInputController: travelDescriptionController,
              label: travelDescription,
              onEditingComplete: () {
                travelValueFocus.nextFocus();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AddTextForm(
              focusNode: travelValueFocus,
              userInputController: travelValueController,
              label: travelValue,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
              shrinkWrap: true,
              itemCount: travelController.travelList.length,
              itemBuilder: ((context, index) {
                var travelItem = travelController.travelList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: TravelCard(
                      title: travelItem.travelName,
                      description: travelItem.travelDescription,
                      price: 'R\$ ${travelItem.travelPrice}',
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            AddButton(
                onPressed: () {
                  travelController.addNewTravel(
                      travelName: travelNameController.text,
                      travelDescription: travelDescriptionController.text,
                      travelPrice: travelValueController.text);
            }),
          ],
        ),
      ),
    );
  }
}
