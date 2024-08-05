import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'sun.dart';
import 'mercury.dart';
import 'venus.dart';
import 'earth.dart';
import 'mars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _mercuryController;
  late AnimationController _venusController;
  late AnimationController _earthController;
  late AnimationController _marsController;

  @override
  void initState() {
    super.initState();

    // Mercury Animation Controller
    _mercuryController = AnimationController(
      duration: const Duration(seconds: 20), // Adjust the duration as needed
      vsync: this,
    )..repeat();

    // Venus Animation Controller
    _venusController = AnimationController(
      duration: const Duration(seconds: 51), // Adjust the duration as needed
      vsync: this,
    )..repeat();

    // Earth Animation Controller
    _earthController = AnimationController(
      duration: const Duration(seconds: 83), // Adjust the duration as needed
      vsync: this,
    )..repeat();

    // Mars Animation Controller
    _marsController = AnimationController(
      duration: const Duration(seconds: 156), // Adjust the duration as needed
      vsync: this,
    )..repeat();
  }


  @override
  void dispose() {
    _mercuryController.dispose();
    _venusController.dispose();
    _earthController.dispose();
    _marsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/stars.svg',
            ),
          ),
          Center(
            child: theSun(),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _mercuryController,
              builder: (context, child) {
                final angle = _mercuryController.value * 2 * pi; // Mercury's angle
                return Transform.translate(
                  offset: Offset(
                    80 * cos(angle), // Change 80 to desired radius for Mercury
                    80 * sin(angle),
                  ),
                  child: Mercury(),
                );
              },
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _venusController,
              builder: (context, child) {
                final angle = _venusController.value * 2 * pi;
                return Transform.translate(
                  offset: Offset(
                    120 * cos(angle + pi / 2),
                    120 * sin(angle + pi / 2),
                  ),
                  child: Venus(),
                );
              },
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _earthController,
              builder: (context, child) {
                final angle = _earthController.value * 2 * pi + pi/1.5 ;
                return Transform.translate(
                  offset: Offset(
                    170 * cos(angle + pi / 2),
                    170 * sin(angle + pi / 2),
                  ),
                  child: Earth(),
                );
              },
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _marsController,
              builder: (context, child) {
                final angle = _marsController.value * 2 * pi + pi / 2; // Venus's angle
                return Transform.translate(
                  offset: Offset(
                    200 * cos(angle + pi / 2), // Change 120 to desired radius for Venus
                    200 * sin(angle + pi / 2),
                  ),
                  child: Mars(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
