/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:flutter_application_2/pages/detail/index.dart';
import 'package:flutter_application_2/pages/webview/index.dart';

import '../helpers/color_helpers.dart';
import '../components/demo/demo_simple_component.dart';
import '../components/home/home_component.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeComponent();
});

var detailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const DetailPage();
});

var demoRouteHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  String? message = params["message"]?.first;
  String? colorHex = params["color_hex"]?.first;
  String? result = params["result"]?.first;
  Color color = const Color(0xFFFFFFFF);
  if (colorHex != null && colorHex.isNotEmpty) {
    color = Color(ColorHelpers.fromHexString(colorHex));
  }
  return DemoSimpleComponent(
      message: message ?? 'Testing', color: color, result: result);
});

var demoFunctionHandler = Handler(
    type: HandlerType.function,
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      String? message = params["message"]?.first;
      showDialog(
        context: context!,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Hey Hey!",
              style: TextStyle(
                color: Color(0xFF00D6F7),
                fontFamily: "Lazer84",
                fontSize: 22.0,
              ),
            ),
            content: Text("$message"),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("OK"),
                ),
              ),
            ],
          );
        },
      );
      return;
    });

/// Handles deep links into the app
/// To test on Android:
///
/// `adb shell am start -W -a android.intent.action.VIEW -d "fluro://deeplink?path=/message&mesage=fluro%20rocks%21%21" com.theyakka.fluro`
var deepLinkHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  String? colorHex = params["color_hex"]?.first;
  String? result = params["result"]?.first;
  Color color = const Color(0xFFFFFFFF);
  if (colorHex != null && colorHex.isNotEmpty) {
    color = Color(ColorHelpers.fromHexString(colorHex));
  }
  return DemoSimpleComponent(
      message: "DEEEEEP LINK!!!", color: color, result: result);
});
