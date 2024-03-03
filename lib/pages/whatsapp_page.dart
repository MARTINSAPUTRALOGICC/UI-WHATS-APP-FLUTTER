import 'package:flutter/material.dart';
import 'package:ui_whatsapp/style/theme.dart';
import 'package:ui_whatsapp/widgets/call_widget.dart';
import 'package:ui_whatsapp/widgets/status_widget.dart';

import '../widgets/chats_widget.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> with SingleTickerProviderStateMixin {
  TabController? tabController;
  var fabicon = Icons.message;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);

    tabController?.addListener(() {
      setState(() {
        switch(tabController?.index){
          case 0:
            fabicon = Icons.camera_alt;
            break;
          case 1:
            fabicon = Icons.message;
         break;
          case 2:
            fabicon = Icons.camera_enhance;
            break;
          case 3:
            fabicon = Icons.call;
            break;
        }
      });
    });
    tabController?.index = 1;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: whatsAppGreen,
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
         child: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          controller: tabController,
         indicatorColor: Colors.white,
          tabs: const [ 
          Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ],
        )
        ),
    body: TabBarView(
      controller: tabController,
      children: [
        Icon(Icons.camera_alt),
        ChatWidget(),
      StatusWidget(),
      CallsWidget()

      ],
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: whatsAppLightGreen,
        child: Icon(fabicon),
      ),
    );

  }
}
