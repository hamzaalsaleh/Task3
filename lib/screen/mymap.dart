import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:the_city/const/listmarker.dart';
import 'package:the_city/const/theme.dart'; // Import carousel_slider package

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  MapController mapController = MapController();
  Location location = Location();
  LatLng userLocation = LatLng(0.0, 0.0);
  List<Marker> markers = [];
  List<LatLng> polygonCoordinates = [];
  double zoomLevel = 15.0;
  double rotationAngle = 0.0;

  @override
  void initState() {
    super.initState();
    _setupLocationListener();
  }

  void _setupLocationListener() {
    location.onLocationChanged.listen((LocationData locationData) {
      userLocation = LatLng(locationData.latitude!, locationData.longitude!);
      markers = [
        Marker(
          width: 80.0,
          height: 80.0,
          point: userLocation,
          builder: (context) => Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 40,
                  color: Colors.blue.withOpacity(0.5),
                ),
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ];

      polygonCoordinates = [
        LatLng(userLocation.latitude + 0.001, userLocation.longitude + 0.001),
        LatLng(userLocation.latitude - 0.001, userLocation.longitude + 0.001),
        LatLng(userLocation.latitude - 0.001, userLocation.longitude - 0.001),
        LatLng(userLocation.latitude + 0.001, userLocation.longitude - 0.001),
      ];

      mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
    });
  }

  void _toggleRotation() {
    setState(() {
      rotationAngle = rotationAngle == 0.0 ? 45.0 : 0.0;
      mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
    });
  }

  void _onMarkerTapped(LatLng tappedPoint, MapPosition tapPosition) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.all(20),
          title: Text('Marker Tapped'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Latitude : ${tappedPoint.latitude},\nLongitude : ${tappedPoint.longitude}'),
              SizedBox(
                height: 20,
              ),
              CachedNetworkImage(
                  imageUrl:
                      "https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1"),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Close',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('City View', style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Consts.indigoColor,
          onPressed: _toggleRotation,
          child: Icon(Icons.rotate_right_outlined)),
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              children: [
                TileLayer(
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: markers,
                  rotate: true,
                ),
                PolygonLayer(
                  polygons: [
                    Polygon(
                      points: polygonCoordinates,
                      borderStrokeWidth: 2,
                      borderColor: Colors.blue,
                    ),
                  ],
                ),
              ],
              options: MapOptions(
                onTap: (p, pl) {
                  _onMarkerTapped(pl as LatLng, MapPosition());
                },
                center: userLocation,
                zoom: zoomLevel,
                rotation: rotationAngle,
              ),
              mapController: mapController,
            ),
          ),
        ],
      ),
    );
  }
}

List<Marker> getMarker() {
  return List<Marker>.from(FackeData().fackedata.map((e) => Marker(
      point: LatLng(e.latitude!, e.longitude!),
      builder: (context) => Icon(Icons.location_on_outlined))));
}
