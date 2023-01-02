import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Text
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text("Available Plans", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),

              // Plans 1
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  elevation: 1,
                  color: const Color(0x94ACFE),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Photo
                        Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        // Info
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                                child: Text(
                                  "9000 Steps a Day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              // Data
                              Row(
                                children: [
                                  Container(
                                    child: Text("30 Days", style: TextStyle(fontSize: 10, color: Colors.white),),
                                  ),
                                  Container(
                                    child: Text("Daily", style: TextStyle(fontSize: 10, color: Colors.white),),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Plans 2
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  elevation: 1,
                  color: const Color(0x94ACFE),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Photo
                        Image.network("https://www.runtastic.com/blog/wp-content/uploads/2021/05/rfto_blog_streak-running_thumbnail_1200x800.jpg"),
                        // Info
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                                child: Text(
                                  "30 Minutes Morning",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              // Data
                              Row(
                                children: [
                                  Container(
                                    child: Text("30 Days", style: TextStyle(fontSize: 10, color: Colors.white),),
                                  ),
                                  Container(
                                    child: Text("Daily", style: TextStyle(fontSize: 10, color: Colors.white),),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
