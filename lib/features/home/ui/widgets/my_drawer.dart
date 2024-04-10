import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("YoussefMohammed"),
            accountEmail: Text("Youssiff26@gmail.con"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: AssetImage(
                  "assets/images/1.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJLOn3IcO_61EyNeYniN2N2GidJbMHRXVhzjSgYIYvg&s"),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Home"),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Favorite"),
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Them"),
            leading: const Icon(Icons.dark_mode),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Message"),
            leading: const Icon(Icons.message),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Review"),
            leading: const Icon(Icons.reviews),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Share"),
            leading: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
