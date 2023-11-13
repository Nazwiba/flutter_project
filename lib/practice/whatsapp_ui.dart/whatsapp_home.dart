import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WhatsAppHome();
}

class _WhatsAppHome extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp"),
      
        leading: const Row(
          children: [
            Icon(Icons.camera_alt),
            Icon(Icons.search),
            
          ],
        )
        
      
      ),
    );
  }
}
