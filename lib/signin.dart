// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_sugnup/signup.dart';


class WedSignIn extends StatefulWidget {
  const WedSignIn({super.key});

  @override
  State<WedSignIn> createState() => _WedSignInState();
}

class _WedSignInState extends State<WedSignIn> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("User sign In"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .15,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/download.png"),
              radius: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome Again!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                // fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue[700],
                        value: valuefirst,
                        onChanged: (bool? value) {
                          setState(() {
                            valuefirst = value!;
                          });
                        },
                      ),
                      Text("Remember Me"),
                    ],
                  ),
                ),
                //till we have add check box in here
                // Checkbox(
                //   checkColor: Colors.red,
                //   activeColor: Colors.green,
                //   onChanged: (bool? value) {
                //     setState(() {

                //     });
                //   },
                //   value: this.valuefirst,
                // value: this.valuefirst,
                // onChanged: (bool value) {
                //   setState(() {
                //     this.valuefirst = value;
                //   });
                // },
                // ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.red[900]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => WedSignUp()),
              ),
              child: Text(
                "Don't have an account?Sign Up",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}