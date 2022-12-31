import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController contEmail = new TextEditingController();
  TextEditingController contPass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Selamat Datang!", style: TextStyle(fontSize: 25))
            ),
            // Box Email
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(20),
              // Isi
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Email Title
                  Text("Email Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  // Email
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email Address'
                      ),
                      style: TextStyle(fontSize: 15),
                      controller: contEmail,
                    )
                  ),
                ],
              ),
            ),
            // Box Password
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(20),
              // Isi
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Password Title
                  Text("Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  // Password
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all()
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password'
                        ),
                        style: TextStyle(fontSize: 15),
                        controller: contPass,
                      )
                  ),
                ],
              ),
            ),
            // Buttons
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // Button Login
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.black)
                              )
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          // Function Login
                        });
                      },
                      child: Text("Login", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  Container(
                    // Button Register
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.black)
                              )
                          )
                      ),
                      onPressed: (){
                        setState(() {
                          // Function Register
                        });
                      },
                      child: Text("Register", style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
