// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              _buildBackgroundDecorations(),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 100),
                child: Container(color: Colors.transparent),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    const Gap(10),
                    _buildWeatherDetails(),
                    const Gap(40),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: const Divider(color: Colors.grey, thickness: 0.3),
                    ),
                    _buildWeatherReportTile(
                      assetPath1: "assets/11.png",
                      assetPath2: "assets/12.png",
                      title: "Cloudy",
                      time: "11:00am",
                    ),
                    const Gap(20),
                    _buildWeatherReportTile(
                      assetPath1: "assets/13.png",
                      assetPath2: "assets/14.png",
                      title: "Cloudy",
                      time: "11:00am",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundDecorations() {
    return Stack(
      children: [
        const Align(
          alignment: AlignmentDirectional(3, -0.3),
          child: CircleAvatar(radius: 150, backgroundColor: Colors.deepPurple),
        ),
        const Align(
          alignment: AlignmentDirectional(-3, -0.3),
          child: CircleAvatar(radius: 150, backgroundColor: Colors.deepPurple),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1.2),
          child: Container(
            height: 200,
            width: 600,
            color: const Color.fromARGB(255, 214, 173, 118),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Abu Kabir", style: TextStyle(color: Colors.white, fontSize: 18)),
        Text("Good Morning",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildWeatherDetails() {
    return Column(
      children: [
        Center(child: Image.asset("assets/1.png", width: 300)),
        const Center(
          child: Text(
            "21C",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
        const Center(
          child: Text("THUNDERSTORM",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        const Center(
          child: Text("Friday 16 . 09:32am",
              style: TextStyle(color: Colors.grey, fontSize: 15)),
        ),
      ],
    );
  }

  Widget _buildWeatherReportTile({
    required String assetPath1,
    required String assetPath2,
    required String title,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Image.asset(assetPath1, scale: 8),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(time,
                    style: const TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(assetPath2, scale: 8),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(time,
                    style: const TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
