import 'package:flutter/material.dart';
import 'drawer_tiles.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Olumide'),
            accountEmail: Text('olumideolubosede@yahoo.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/profile_pic.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
          DrawerTile(
            text: 'Home',
            icon: Icons.home,
            onTap: () {},
          ),
          DrawerTile(
            text: 'My Account',
            icon: Icons.person,
            onTap: () {},
          ),
          DrawerTile(
            text: 'My Orders',
            icon: Icons.shopping_basket,
            onTap: () {},
          ),
          DrawerTile(
            text: 'Categories',
            icon: Icons.category,
            onTap: () {},
          ),
          DrawerTile(
            text: 'Favourite',
            icon: Icons.favorite,
            onTap: () {},
          ),
          Divider(),
          DrawerTile(
            text: 'Settings',
            icon: Icons.settings,
            onTap: () {},
          ),
          DrawerTile(
            text: 'About',
            icon: Icons.help,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
