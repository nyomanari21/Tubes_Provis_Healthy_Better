import 'package:flutter/material.dart';

class UserProgress extends StatefulWidget {
  const UserProgress({super.key});

  @override
  State<UserProgress> createState() => _UserProgressState();
}

class _UserProgressState extends State<UserProgress> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Progress"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Weight graph
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Text
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("Weight Graph", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    // Buttons
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Weight
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.auto_graph, color: Colors.white,),
                            label: Text("Weight", style: TextStyle(fontSize: 12),),
                          ),
                          // Time
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.calendar_month, color: Colors.white,),
                            label: Text("Weight", style: TextStyle(fontSize: 12),),
                          )
                        ],
                      ),
                    ),
                    // Graphic
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),

              // Entries
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Text
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("Entries", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    // Buttons
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Weight
                          ElevatedButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.auto_graph, color: Colors.white,),
                              label: Text("Weight", style: TextStyle(fontSize: 12),),
                          ),
                          // Time
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.calendar_month, color: Colors.white,),
                            label: Text("Weight", style: TextStyle(fontSize: 12),),
                          )
                        ],
                      ),
                    ),
                    // Data 1
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("60 Kg", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("11/22/2022"),
                        ],
                      ),
                    ),
                    // Data 2
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("59 Kg", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("10/22/2022"),
                        ],
                      ),
                    ),
                    // Data 3
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("59 Kg", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("9/22/2022"),
                        ],
                      ),
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
