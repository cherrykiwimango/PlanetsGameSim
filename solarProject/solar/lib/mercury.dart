import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mercury extends StatefulWidget {
  const Mercury({super.key});

  @override
  State<Mercury> createState() => _MercuryState();
}

class _MercuryState extends State<Mercury> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/mercury.svg'),
    );
  }
}
