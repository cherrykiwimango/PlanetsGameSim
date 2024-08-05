import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class theSun extends StatefulWidget {
  const theSun({super.key});

  @override
  State<theSun> createState() => _theSunState();
}

class _theSunState extends State<theSun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/SUN.svg'),
    );
  }
}
