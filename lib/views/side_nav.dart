import 'package:dnd_sheet/views/equipment_page.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'DnD Charachter',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            title: const Text("Equipaggiamento"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EquipmentPage()));
            },
          ),
          const ListTile(
            title: Text("Privilegi e tratti"),
          ),
          const ListTile(
            title: Text("Competenze e linguaggi"),
          ),
          const ListTile(
            title: Text("Trucchetti"),
          ),
        ],
      ),
    );
  }
}
