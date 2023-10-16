import 'package:first/screens/about_us.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (details) => Navigator.pop(context),
      child: SizedBox(
        height: 300,
        child: ListView(
          children: [
            Row(
              children: [
                const Text('Metronom'),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(Key('')),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text('Sestavení not'),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(Key('')),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text('O nás'),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(Key('')),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
