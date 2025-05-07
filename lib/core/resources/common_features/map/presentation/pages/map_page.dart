import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  MapShapeLayerController _mapShapeLayerController = MapShapeLayerController();
  @override
  Widget build(BuildContext context) {
    return SfMaps(
      layers: [
        MapShapeLayer(
            initialLatLngBounds: MapLatLngBounds(
                MapLatLng(36.191113, 44.009167),
                MapLatLng(46.191113, 46.009167)),
            controller: _mapShapeLayerController,
            source: MapShapeSource.asset(
              "assets/world_map.json",
              shapeDataField: "name",
            ),
            color: Theme.of(context).primaryColor,
            showDataLabels: true)
      ],
    );
  }
}
