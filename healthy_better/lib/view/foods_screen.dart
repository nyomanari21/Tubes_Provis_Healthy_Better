import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});
  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  TextEditingController contEmail = new TextEditingController();
  TextEditingController contPass = new TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foods',
          style: TextStyle(color: Colors.black), //<-- SEE HERE
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom:10),
              child: Text(
                "My Foods",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsets.only(bottom:30),
              child: Text(
                "Food is any substance consumed by an organism for nutritional support",
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              width: 175,
              height: 55,

              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Create a Food",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}
