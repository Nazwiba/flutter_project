// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/statefull_login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: StatefulSignUp(),
  ));
}

class StatefulSignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefulSignUp();
}

class _StatefulSignUp extends State<StatefulSignUp> {
  String name = "Nasweeba";
  String email = "nasweebaa68@gmail.com";
  String password = "nazwi@1123";
  String confirmpassword = "nazwi@123";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  //call valid key for validation
  final validkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //inside appbar we write a titile for the appbar using titile keyword
        title: const Text("Sign Up Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          //we can wrap column with wrap with widget and instead of widget we can write form
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up Page",
                  style: GoogleFonts.oswald(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                //we create textform fields that we want
                // instead of wrap with padding we can use sizedbox
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains("gmail.com")) {
                      return "Invalid email id";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Email Id"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: passwordController,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "password must not be empty or length should be greater than 6";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: confirmpasswordController,
                  validator: (confirmPassword) {
                    if (confirmPassword!.isEmpty ||
                        confirmPassword.length < 6) {
                      return "password does not match";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //then create material button
                MaterialButton(
                  onPressed: () {
                    final valid = validkey.currentState!.validate();
                    if (valid == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Invalid Email/Password")));
                    }
                    nameController.text = "";
                    emailController.text = "";
                    passwordController.text = "";
                    confirmpasswordController.text = "";
                  },
                  color: Colors.blue,
                  shape: const StadiumBorder(),
                  child: const Text("Sign Up"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatefullLogin()));
                    },
                    child:
                        const Text("Alreday Have an Account!? Signin Here!!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
