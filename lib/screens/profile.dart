import 'package:ccr_multistore_app/screens/cart.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Guest"),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.teal,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Text("Cart"),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.teal,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.list_alt,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Text("Orders"),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.teal,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Text("Favorites"),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Divider(),
                    ),
                    Text(
                      "Account Details",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      title: Text("Email Address"),
                      subtitle: Text("example@domain.com"),
                      leading: Icon(Icons.email),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    ListTile(
                      title: Text("Phone Number"),
                      subtitle: Text("+20 123456789"),
                      leading: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    ListTile(
                      title: Text("Address"),
                      subtitle: Text("Example 123 St. - Cairo"),
                      leading: Icon(Icons.location_pin),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Divider(),
                    ),
                    Text(
                      "Account Settings",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: const [
                    ListTile(
                      title: Text("Edit Profile"),
                      leading: Icon(Icons.edit),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: Text("Change Password"),
                      leading: Icon(Icons.lock),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.logout),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}