import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Venus extends StatefulWidget {
  const Venus({super.key});

  @override
  State<Venus> createState() => _VenusState();
}

class _VenusState extends State<Venus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/venus.svg'),
    );
  }
}
