import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(41.3284167, 69.2277778),
    zoom: 14.4746,
  );

  Map<MarkerId, Marker> markers = {};

  Future<void> _initLocation() async {
    LatLng initialLocation = _kGooglePlex.target;

    _addMarkers(initialLocation, "Pharm Live");
  }

  void _addMarkers(LatLng point, String markerName) {
    final MarkerId markerId = MarkerId(markerName);

    // Create a Marker
    final Marker marker = Marker(
      markerId: markerId,
      position: point,
      infoWindow: InfoWindow(title: markerName),
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          "Самовывоз из аптека",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
        ),
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 45.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [SpaceWidth(), Icon(Icons.search), SpaceWidth()],
                  ),
                  hintText: 'Поиск'.tr(),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(280.r),
                      borderSide: BorderSide.none),
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            )),
      ),
      body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          markers: Set<Marker>.of(markers.values),
          onMapCreated: (GoogleMapController controller) =>
              _controller.complete(controller)),
    );
  }
}
