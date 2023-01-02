import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.black), //<-- SEE HERE
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Team Name
              Container(

                child: Text(
                  "Team Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              //
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Justo laoreet sit amet cursus sit amet dictum. Accumsan lacus vel facilisis volutpat est velit egestas dui. Orci phasellus egestas tellus rutrum. Lacus suspendisse faucibus interdum posuere lorem ipsum. Fermentum odio eu feugiat pretium nibh ipsum consequat. In fermentum et sollicitudin ac orci. Tellus mauris a diam maecenas sed enim ut. Sit amet est placerat in egestas erat imperdiet sed euismod. Facilisi morbi tempus iaculis urna id volutpat lacus.",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Our Team
              Container(
                padding: EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Text(
                      "Our Team",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      // padding: EdgeInsets.only(top:20),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Team member 1
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                                    ),
                                    maxRadius: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Text("Andum Pangestu"),
                                      Text("Email"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Team 2
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                                    ),
                                    maxRadius: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Text("Irfan Mochamad Esa"),
                                      Text("Email"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Team 3
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                                    ),
                                    maxRadius: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Text("Muhammad Rafli Syaputra"),
                                      Text("Email"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Team 4
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.pngkey.com/png/full/157-1579943_no-profile-picture-round.png",
                                    ),
                                    maxRadius: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Text("Nyoman Ari Satyadharma"),
                                      Text("Email"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
