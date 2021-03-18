import 'package:flutter/material.dart';

import 'Call_Screen.dart';
import 'Camera_Screen.dart';
import 'Chat_Screen.dart';
import 'Status_Screen.dart';
class WhatsAppPage extends StatefulWidget {
  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> with SingleTickerProviderStateMixin{
  ///int currentindex=0;
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync:this, initialIndex: 1)..addListener((){
      setState(() {

      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("WhatsApp"),
        ///backgroundColor: Theme.of(context),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
            tabs: [

              Tab(icon:Icon(Icons.camera_alt),),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",),
            ]),
        actions: [
          Icon(Icons.search),
          _tabController.index==1?PopupMenuButton(itemBuilder: (context) {
            return[
              PopupMenuItem(child: Text("New group"),),
              PopupMenuItem(child: Text("New broadcast"),),
              PopupMenuItem(child: Text("WhatsApp Web"),),
              PopupMenuItem(child: Text("Starred messages"),),
              PopupMenuItem(child: Text("Settings"),),
            ];
          },)
              :_tabController.index==2
              ?PopupMenuButton(itemBuilder: (context) {
            return[
              PopupMenuItem(child: Text("Status privacy"),),
              PopupMenuItem(child: Text("Settings"),),

            ];
          },)
              :PopupMenuButton(itemBuilder: (context) {
            return[
              PopupMenuItem(child: Text("Clear call log"),),
              PopupMenuItem(child: Text("Settings"),),

            ];
          },)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [

          Camera(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
         floatingActionButton: _tabController.index == 0
             ?FloatingActionButton(onPressed: (){},
           backgroundColor: Colors.green,
           child: Icon(Icons.camera_alt,
             color: Colors.white,),)
        :_tabController.index==1?
         FloatingActionButton(onPressed: (){},
           backgroundColor: Colors.green,
          child: Icon(Icons.message, color: Colors.white,),)
             :_tabController.index==2
        ?Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             SizedBox(
               height: 40,
               width: 40,
               child: FloatingActionButton(onPressed: (){},
                 backgroundColor: Colors.grey,
                 child: Icon(Icons.edit, color: Colors.white,),),
             ),
             SizedBox(height: 10,),
             FloatingActionButton(onPressed: (){},
               backgroundColor: Colors.green,
               child: Icon(Icons.camera_alt, color: Colors.white,),)
           ],
         )
             :FloatingActionButton(onPressed: (){},
           backgroundColor: Colors.green,
           child: Icon(Icons.add_call, color: Colors.white,),)
    );
  }
}
