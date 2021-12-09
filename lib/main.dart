import 'package:flutter/material.dart';
import 'package:font_zoom/ui/home_screen.dart';

void main() {
  runApp(const FontZoomHome());
}

class FontZoomHome extends StatelessWidget {
  const FontZoomHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Font Zoom'),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
