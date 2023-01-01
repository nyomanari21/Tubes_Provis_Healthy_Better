import 'package:flutter/material.dart';

class InputCalories extends StatefulWidget {
  const InputCalories({super.key});

  @override
  State<InputCalories> createState() => _InputCaloriesState();
}

class _InputCaloriesState extends State<InputCalories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Calories"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Day slider
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.black))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Button left
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chevron_left),
                    ),
                    // Day
                    Text("Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    // Button right
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),

              // Calories Data
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.black))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Text("Calories Remaining", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    // Data
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Goal
                        Column(
                          children: [
                            Text("2140", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text("Goal", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Icon(Icons.add_circle_outline, color: Colors.blueAccent,),
                        // Food
                        Column(
                          children: [
                            Text("2140", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text("Food", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Icon(Icons.remove_circle_outline, color: Colors.purpleAccent,),
                        // Exercise
                        Column(
                          children: [
                            Text("2140", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text("Exercise", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Icon(Icons.add_circle_outline, color: Colors.grey,),
                        // Remaining
                        Column(
                          children: [
                            Text("2140", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text("Remaining", style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Card Input Calories
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Breakfast
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        elevation: 1,
                        color: const Color(0x94ACFE),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Breakfast Title
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    Text("466", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                  ],
                                ),
                              ),
                              // Data Breakfast
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Column(
                                  children: [
                                    Text("Meal 1"),
                                    Text("Meal 2"),
                                    Text("Meal 3"),
                                    Text("Meal 4"),
                                  ],
                                ),
                              ),
                              // Button Add Food
                              Container(
                                child: ElevatedButton.icon(
                                  onPressed: (){},
                                  icon: Icon(Icons.fastfood),
                                  label: Text("Add Food"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Lunch
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        elevation: 1,
                        color: const Color(0x94ACFE),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Lunch Title
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Lunch", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    Text("466", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                  ],
                                ),
                              ),
                              // Data Breakfast
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Column(
                                  children: [
                                    Text("Meal 1"),
                                    Text("Meal 2"),
                                    Text("Meal 3"),
                                    Text("Meal 4"),
                                  ],
                                ),
                              ),
                              // Button Add Food
                              Container(
                                child: ElevatedButton.icon(
                                  onPressed: (){},
                                  icon: Icon(Icons.fastfood),
                                  label: Text("Add Food"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Dinner
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        elevation: 1,
                        color: const Color(0x94ACFE),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Dinner Title
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Dinner", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    Text("466", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                  ],
                                ),
                              ),
                              // Data Breakfast
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Column(
                                  children: [
                                    Text("Meal 1"),
                                    Text("Meal 2"),
                                    Text("Meal 3"),
                                    Text("Meal 4"),
                                  ],
                                ),
                              ),
                              // Button Add Food
                              Container(
                                child: ElevatedButton.icon(
                                  onPressed: (){},
                                  icon: Icon(Icons.fastfood),
                                  label: Text("Add Food"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Lunch
                    // Dinner
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
