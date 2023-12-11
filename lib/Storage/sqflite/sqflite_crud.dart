// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_project/Storage/sqflite/dboperation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SqfLiteCrud(),
  ));
}

class SqfLiteCrud extends StatefulWidget {
  @override
  State<SqfLiteCrud> createState() => _SqfLiteCrudState();
}

class _SqfLiteCrudState extends State<SqfLiteCrud> {
  final nameCtrl = TextEditingController();
  final phnCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "CONTACTS",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.white,
        onPressed: () => showsheet(null),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  showsheet(int? id) {
    // if (id != null) // to update contact
    // {}
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom +
                    100 //adjust the size of textfield according to the size of the keyboard
                ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nameCtrl,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(), hintText: "Name"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: phnCtrl,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(), hintText: "Phone Number"),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            ),
                            
                    onPressed: () async {
                      if (id == null) {
                        await createcontact();
                      } else if (id != null) {
                        //await update_contact();
                      }
                    },
                    child: Text(
                      id == null ? "Create Contact" : "Update Contact",
                      style: const TextStyle(color: Colors.black),
                    ))
              ],
            ),
          );
        });
  }

  Future<void> createcontact() async {
    await SQLHelper.createContact(nameCtrl.text, phnCtrl.text);
  }
}
