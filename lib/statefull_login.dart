// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/statefull_signup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: StatefullLogin(),
  ));
}

class StatefullLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefullLogin();
}

class _StatefullLogin extends State<StatefullLogin> {
  final validkey =
      GlobalKey<FormState>(); // we can add validation ,use this key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"), // here we use titilr for the appbar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            // we can wrap with column with wrap with widget and write form and put a key: valid key for validation for the multichild
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Page",
                  style: GoogleFonts.oswald(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                //intsead of padding here we use sizedbox
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // instead of textfield here we use textformfield
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains("gmail.com")) {
                      return "Invalid email";
                    } //! is put in the right it is null check and put in the left it gives not(opoosite of the statement)
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // value that we typed in formfield will stored in email
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Password must not be empty or  Length should be greater than 6";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),

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
                  },
                  color: Colors.blue,
                  shape: const StadiumBorder(),
                  child: const Text("Login"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatefulSignUp()));
                    },
                    child: const Text("Not a User? Register Here!!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
