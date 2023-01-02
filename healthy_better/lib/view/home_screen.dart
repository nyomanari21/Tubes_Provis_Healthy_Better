import 'package:flutter/material.dart';
import 'package:healthy_better/view/about_us.dart';
import 'package:healthy_better/view/login_screen.dart';
import 'package:healthy_better/view/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int idx = 0;

  // event untuk ganti halaman drawer
  void gantiItem(int index) {
    setState(() {
      idx = index;
    });
  }

  // list bottom navigation bar
  static const List<Widget> bottomNav = [
    // const LaporMedali(),
    // const HomePage(),
    // const Pengaturan(),
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {}));
  ];

  String nama = "Nyoman Ari";
  String email = "demo@emai.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      // Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            // Drawer header
            Container(
              child: DrawerHeader(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Photo
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "http://medialengka.com/profile.jpg",
                      ),
                      maxRadius: 45,
                    ),
                  ),
                  // Name
                  Text(
                    nama,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  // Email
                  Text(
                    email,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              )),
              color: Colors.white,
            ),

            // My Account
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: const Text("My Account"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Profile();
                  }));
                },
              ),
            ),

            // Edit Profile
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: const Text("Edit Profile"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Profile();
                  }));
                },
              ),
            ),

            // My Foods
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: const Text("My Foods"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AboutUs();
                  }));
                },
              ),
            ),

            // About Us
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: const Text("About Us"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AboutUs();
                  }));
                },
              ),
            ),

            // Logout
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: const Text("Logout"),
                onTap: () {
                  Future<void> _signOut() async {
                    await FirebaseAuth.instance.signOut();
                  }
                },
              ),
            ),
          ],
        ),
      ),

      // Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Foto Profile
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto + nama
                  Column(
                    children: [
                      // Foto
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                        ),
                        maxRadius: 40,
                      ),
                      // Nama
                      Text(nama),
                    ],
                  ),
                  // Button Edit Profile
                  IconButton(
                    iconSize: 20,
                    onPressed: () {
                      // Function Edit Profile
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
            ),

            // Card Calories
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                elevation: 1,
                color: const Color(0x94ACFE),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Calories title
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Calories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "Remaining = Goal - Food + Exercise",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      // Remaining data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Remaining
                          Column(
                            children: [
                              Text(
                                "120",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Remaining")
                            ],
                          ),
                          // Calories Data
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Base Goal
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.flag,
                                    color: Colors.blueAccent,
                                  ),
                                  // Text
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Base Goal",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              // Food
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.fastfood,
                                    color: Colors.purpleAccent,
                                  ),
                                  // Text
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Food",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              // Exercise
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.redAccent,
                                  ),
                                  // Text
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exercise",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Card Exercise
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                elevation: 1,
                color: const Color(0x94ACFE),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Exercise Title
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exercise",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "Total Calories",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      // Remaining data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Remaining
                          Column(
                            children: [
                              Text(
                                "120",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Remaining")
                            ],
                          ),
                          // Calories Data
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Base Goal
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.flag,
                                    color: Colors.blueAccent,
                                  ),
                                  // Text
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Base Goal",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              // Food
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.fastfood,
                                    color: Colors.purpleAccent,
                                  ),
                                  // Text
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Food",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
