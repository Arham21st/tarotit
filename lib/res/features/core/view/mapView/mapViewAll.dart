// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tarotit/res/constants/colors/colors.dart';
import 'package:tarotit/res/constants/image_strings/image_strings.dart';
import 'package:tarotit/res/widgets/app_bar.dart';

class MapViewAll extends StatefulWidget {
  const MapViewAll({super.key});

  @override
  State<MapViewAll> createState() => _MapViewAllState();
}

class _MapViewAllState extends State<MapViewAll> {
  late GoogleMapController mapController;
  List<Marker> markers = <Marker>[];
  BitmapDescriptor customMarker = BitmapDescriptor.defaultMarker;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: codGray,
        appBar: customAppbar(
            centerTitle: true,
            isBold: true,
            text: 'MapViewAll',
            onTap: () => {},
            showBackButton: true),
        body: GoogleMap(
          initialCameraPosition: const CameraPosition(
              target: LatLng(24.914440, 67.029831), zoom: 100),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
            markers.add(Marker(
              markerId: const MarkerId('value'),
              position: const LatLng(24.914440, 67.029831),
              icon: customMarker,
            ));
          },
          markers: Set<Marker>.of(markers),
        ));
  }
}
