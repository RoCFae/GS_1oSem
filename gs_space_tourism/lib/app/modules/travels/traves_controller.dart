import 'package:flutter/material.dart';

import '../../models/travel_model.dart';
class TravelController extends ChangeNotifier {

  List<TravelList> travelList = [

  ];

  addNewTravel(
      {required String? travelName,
      required String? travelDescription,
      required String? travelPrice}) {
      travelList.insert(
        0,
        TravelList(
            travelName: travelName,
            travelDescription: travelDescription,
            travelPrice: num.parse(travelPrice.toString())),
      );
      notifyListeners();
  }
}