import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';

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
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              title: Text('Home'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text('My Account'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.pink,
              ),
              title: Text('My Orders'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.pink,
              ),
              title: Text('Shopping Cart'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              title: Text('Favourite'),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.help),
              title: Text('About'),
            ),
          ),
        ],
      ),
    );
  }
}
