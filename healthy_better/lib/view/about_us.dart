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
          style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Team Name
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Team Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              // Description
              Container(
                margin: EdgeInsets.all(10),
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
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Text(
                      "Our Team",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // Team member 1
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text("Andum Pangestu", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  child: Text("andumpangestu12345@upi.edu"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Team member 2
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text("Irfan Mochamad Esa", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  child: Text("irfanesa@upi.edu"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Team member 3
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text("Muhammad Rafli Syaputra", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  child: Text("mraflis@upi.edu"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Team member 4
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text("Nyoman Ari Satyadharma", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  child: Text("ari.satyadharma@upi.edu"),
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
