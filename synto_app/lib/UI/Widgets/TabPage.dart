import 'package:flutter/material.dart';
import 'package:synto_app/UI/pages/SegundaPantalla.dart';
import 'package:synto_app/UI/pages/TerceraPantalla.dart';

class TabPage extends StatefulWidget{
  _TabPage createState() => new _TabPage();
}

class _TabPage extends State<TabPage> with SingleTickerProviderStateMixin{
  TabController tabController;

  List<Tab>myTabs=<Tab>[

    new Tab(icon: Icon(Icons.home),text: "Bienvenida",),
    new Tab(icon: Icon(Icons.notifications),text: "Servicios",),

  ];


  @override
  void initState() {
    tabController= new TabController(length: myTabs.length, vsync:this);
    
    tabController.addListener(() {
      setState(() {
        print("index ${tabController.index}");
      });
    });
  }


  @override
  void dispose() {
    tabController.dispose();
  }

  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      /*
      appBar: new AppBar(
        title: new Text("Tab"),
        bottom: new TabBar(tabs: myTabs,controller: tabController,),
      ),
      */

      body: new TabBarView(children: [
        new SegundaPantalla(),
        new TerceraPantalla(),



      ],
      controller: tabController,),

    );
  }
}