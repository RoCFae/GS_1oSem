import 'package:flutter/material.dart';
import 'package:gs_space_tourism/app/modules/drones/drones_page.dart';
import 'package:gs_space_tourism/app/modules/travels/travels_page.dart';
import 'package:gs_space_tourism/utils/export.dart';

import '../modules/home/home_page.dart';
import '../modules/login/login_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Account Name', style: TextStyle(color: Color.fromARGB(255, 194, 194, 194)),),
            accountEmail: Text('account.email@gmail.com', style: TextStyle(color: Color.fromARGB(255, 194, 194, 194)),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 15, 19, 60),
              child: ClipOval(
                child: Icon(Icons.person, size: 50),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 15, 19, 60),
              
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(home),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => HomePage()),
                ),
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.airplane_ticket),
            title: const Text(travels),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const TravelPage()),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(infos),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DronePage()),
                  ),
                );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => LoginPage()),
                ),
              )
            },
          ),
        ],
      ),
    );
  }
}
