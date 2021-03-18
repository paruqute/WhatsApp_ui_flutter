import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/models/chat_models.dart';
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: values.length,
          itemBuilder: (context, index) {
            return Card(
              child:ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(values[index].dpurl),
                ),
                title: Text(values[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Text(values[index].Message),
                trailing: Text(values[index].time),
              ) ,
            );

          },

      ),
    );
  }
}
