import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:synto_app/UI/pages/Menu/Analisis.dart';
import 'package:synto_app/UI/pages/Menu/Diccionario.dart';
import 'package:synto_app/UI/pages/Menu/GPS.dart';
import 'package:synto_app/UI/pages/Menu/miPerfil.dart';



class CuartaPantalla extends StatefulWidget{
  _CuartaPantalla createState() => new _CuartaPantalla();
}

class _CuartaPantalla extends State<CuartaPantalla> with TickerProviderStateMixin{
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this,length: 4);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar: MotionTabBar(

          labels: [
            "Analisis","Diccionario","GPS","Perfil"
          ],
          initialSelectedTab: "Analisis",
          tabIconColor: Colors.deepPurple,
          tabSelectedColor: Colors.cyan[400],

          onTabItemSelected: (int value){
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [
            Icons.add_box,Icons.collections_bookmark,Icons.location_on,Icons.account_circle,
          ],
          textStyle: TextStyle(color: Colors.blue),
        ),
        body: new MotionTabBarView(

          controller: _tabController,
          children: [
            new AnalisisPageTab(),
            new DiccPageTab(),
            new GPSPageTab(),
            new RResult(),
            /*
            Container(


              child: Center(
                child: Text("Analisis"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Diccionario"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Gps"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Perfil"),
              )
            )
            */


          ],
        ));
  }
}