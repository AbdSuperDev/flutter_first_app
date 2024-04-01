import 'package:app1/pages/widgets/drawer.header.dart';
import 'package:app1/pages/widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),
          /*ListTile(
            leading: Icon(
              Icons.home,
              color: Theme.of(context).iconTheme.color,
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
            title: const Text(
              "Home",
            ),
          ),*/
          MyDrawerItem(
              title: "Home",
              itemIcon: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          MyDrawerItem(
              title: "Counter",
              itemIcon: const Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              }),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          MyDrawerItem(
            title: "Products",
            itemIcon: const Icon(Icons.production_quantity_limits_sharp),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
