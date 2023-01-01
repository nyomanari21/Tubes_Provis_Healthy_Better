import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController contUsername = new TextEditingController();
  TextEditingController contEmail = new TextEditingController();
  TextEditingController contDoB = new TextEditingController();
  TextEditingController contWeight = new TextEditingController();
  TextEditingController contUnits = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(7),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Edit Profile Photo
              Container(
                child: Column(
                  children: [
                    // Photo
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                        ),
                        maxRadius: 50,
                      ),
                    ),
                    // Edit
                    ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.edit),
                      label: Text("Edit Photo", style: TextStyle(fontWeight: FontWeight.bold,),)
                    ),
                  ],
                ),
              ),

              // Username
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Username", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                            // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username'
                          ),
                          style: TextStyle(fontSize: 15),
                          controller: contUsername,
                        )
                    ),
                  ],
                ),
              ),

              // Email
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email'
                          ),
                          style: TextStyle(fontSize: 15),
                          controller: contEmail,
                        )
                    ),
                  ],
                ),
              ),

              // Date of Birth
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Date of Birth", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Date of Birth'),
                          style: TextStyle(fontSize: 15),
                          controller: contDoB,
                          readOnly: true,
                          // Control date picker
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(), //get today's date
                                firstDate: DateTime(
                                    1900), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));
                            if (pickedDate != null) {
                              setState(() {
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                //You can format date as per your need
                                contDoB.text = formattedDate;
                              });
                            } else {
                              print("Date not selected");
                            }
                          },
                        )
                    ),
                  ],
                ),
              ),

              // Weight
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Weight", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Weight'
                          ),
                          style: TextStyle(fontSize: 15),
                          controller: contWeight,
                        )
                    ),
                  ],
                ),
              ),

              // Units
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Units", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Units'
                          ),
                          style: TextStyle(fontSize: 15),
                          controller: contUnits,
                        )
                    ),
                  ],
                ),
              ),

              // Card Goals
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Goals", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    // Text field
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          // color: Colors.white70,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.purpleAccent)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Update your weight, nutrition and fitness goals'
                          ),
                          style: TextStyle(fontSize: 15),
                          readOnly: true,
                          onTap: (){},
                        )
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
