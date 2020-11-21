import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
class GPSPageTab extends StatefulWidget{
  _GPSPageTab createState() => new _GPSPageTab();
}

class _GPSPageTab extends State<GPSPageTab>{
  // ignore: must_be_immutable
  CameraPosition _initialPosition = CameraPosition(
      target: LatLng(26.8206, 30.8025));
  Completer<GoogleMapController> _controller = Completer();


  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps in Flutter'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: _initialPosition,
            ),
          ],
        ));
  }


}


