import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final LatLng center = const LatLng(23.25226182392082, 77.48536382627971);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/white_logo.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 20),
            const Text(
              "SMART CAR PARKING",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // parkingController.timeCounter();
              Get.toNamed("/about-us");
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: GoogleMap(
        buildingsEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: center,
          zoom: 18.0,
        ),
        markers: {
          Marker(
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_1'),
            position: const LatLng(26.144316899358675, 78.21438404672215),
          ),
          Marker(
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_2'),
            position: const LatLng(26.155285053013166, 78.18497802327886),
          ),
          Marker(
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_3'),
            position: const LatLng(26.12434980002049, 78.21424382984688),
          ),
          Marker(
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_4'),
            position: const LatLng(26.159498786514813, 78.18397918968174),
          ),
          Marker(
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_5'),
            position: const LatLng(26.135379830561728, 78.19706390194281),
          ),
        },
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }
}
