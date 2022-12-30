import 'package:flutter/material.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  TextEditingController contGoals = new TextEditingController();
  TextEditingController contStartWeight = new TextEditingController();
  TextEditingController contCurrWeight = new TextEditingController();
  TextEditingController contWeeklyGoal = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goals"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.all(20),
            elevation: 0,
            color: Colors.grey,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Goals
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Goals", style: TextStyle(fontSize: 20),),
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Goals'
                              ),
                              style: TextStyle(fontSize: 20),
                              controller: contGoals,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Starting Weight
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Starting Weight", style: TextStyle(fontSize: 20),),
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Starting Weight'
                              ),
                              style: TextStyle(fontSize: 20),
                              controller: contStartWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Current Weight
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Current Weight", style: TextStyle(fontSize: 20),),
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Current Weight'
                              ),
                              style: TextStyle(fontSize: 20),
                              controller: contCurrWeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Weekly Goal
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Weekly Goal", style: TextStyle(fontSize: 20),),
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Weekly Goal'
                              ),
                              style: TextStyle(fontSize: 20),
                              controller: contWeeklyGoal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
