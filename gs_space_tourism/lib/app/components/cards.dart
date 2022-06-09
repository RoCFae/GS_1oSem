import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String? text;

  HomeCard({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: const Color.fromARGB(255, 18, 19, 27), width: 2),
        color: const Color.fromARGB(255, 15, 19, 60),
      ),
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text!,
            ),
          ),
        ],
      ),
    );
  }
}

class TravelCard extends StatelessWidget {

  final String? title;
  final String? description;
  final String? price;

  TravelCard({this.title, this.description, this.price});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(title!),
            subtitle: Text(description!),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(price!,
              style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 15),
            ],
          ),
        ],
      ),
    );
  }
}