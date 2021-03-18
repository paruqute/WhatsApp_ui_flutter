import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/pages/first_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54)
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppPage(),

    );
  }
}
