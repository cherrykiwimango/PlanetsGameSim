import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Earth extends StatefulWidget {
  const Earth({super.key});

  @override
  State<Earth> createState() => _EarthState();
}

class _EarthState extends State<Earth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/earth.svg'),
    );
  }
}
