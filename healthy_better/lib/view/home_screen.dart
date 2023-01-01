import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nama = "Nyoman Ari";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
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
                    onPressed: (){
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
                          Text("Calories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("Remaining = Goal - Food + Exercise", style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      // Remaining data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Remaining
                          Column(
                            children: [
                              Text("120", style: TextStyle(fontWeight: FontWeight.bold),),
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
                                  Icon(Icons.flag, color: Colors.blueAccent,),
                                  // Text
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Base Goal", style: TextStyle(fontSize: 10),),
                                      Text("1200", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                                ],
                              ),
                              // Food
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(Icons.fastfood, color: Colors.purpleAccent,),
                                  // Text
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Food", style: TextStyle(fontSize: 10),),
                                      Text("1200", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                                ],
                              ),
                              // Exercise
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(Icons.local_fire_department, color: Colors.redAccent,),
                                  // Text
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Exercise", style: TextStyle(fontSize: 10),),
                                      Text("1200", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
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
                          Text("Exercise", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("Total Calories", style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      // Remaining data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Remaining
                          Column(
                            children: [
                              Text("120", style: TextStyle(fontWeight: FontWeight.bold),),
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
                                  Icon(Icons.flag, color: Colors.blueAccent,),
                                  // Text
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Base Goal", style: TextStyle(fontSize: 10),),
                                      Text("1200", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                                    ],
                                  )
                                ],
                              ),
                              // Food
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon
                                  Icon(Icons.fastfood, color: Colors.purpleAccent,),
                                  // Text
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Food", style: TextStyle(fontSize: 10),),
                                      Text("1200", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
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
