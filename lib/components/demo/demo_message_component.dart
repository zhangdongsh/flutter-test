/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:flutter/material.dart';

class DemoMessageComponent extends StatelessWidget {
  const DemoMessageComponent(
      {super.key, required this.message, this.color = const Color(0xFFFFFFFF)});

  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Center(
        child: Text(
          message,
          style: const TextStyle(
            fontFamily: "Lazer84",
          ),
        ),
      ),
    );
  }
}
