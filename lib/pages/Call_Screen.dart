import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/models/call_model.dart';
class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
          itemCount: callvalue.length,
          itemBuilder:(context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(callvalue[index].dpurl),
                ),
                title: Text(callvalue[index].name,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                
                subtitle: Text(callvalue[index].time,
                ),

                trailing: Icon(Icons.videocam_rounded,color:Color(0xff075E54),),
              ),
            );
          },),
    );
  }
}
