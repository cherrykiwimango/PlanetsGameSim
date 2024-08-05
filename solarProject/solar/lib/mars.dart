import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mars extends StatefulWidget {
  const Mars({super.key});

  @override
  State<Mars> createState() => _MarsState();
}

class _MarsState extends State<Mars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/mars.svg'),
    );
  }
}
