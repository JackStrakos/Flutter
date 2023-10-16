import 'package:first/animations/menu.dart';
import 'package:first/animations/pulsing_waves.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (details) => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const Menu();
          }),
      child: const PulsingWave(),
    );
  }
}
