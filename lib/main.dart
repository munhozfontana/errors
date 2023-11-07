// ignore_for_file: unused_element

import 'dart:async';
import 'dart:developer';

import 'package:errors/my_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  fromFlutterDoc();
  // fromDartDoc();
}

// ##################### FLutter #########################

void fromFlutterDoc() {
  // DOC FLUTTER
  // ### erros não tratado ###
  // FlutterError.onError = (details) {
  //   // altera msg de erro
  //   log('### 💥 error 💥 ###   $details');
  // };

  // // ### erros não tratado asyc ###
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   log('###  💥 Platform Error 💥 ###   $error');
  //   return true;
  // };
  // ### erros widget(builders) ###
  // ErrorWidget.builder = (errorDetails) => Scaffold(
  //       body: Center(
  //         child: SingleChildScrollView(
  //           child: Column(
  //             children: [
  //               Text(
  //                 errorDetails.exception.toString(),
  //                 style: const TextStyle(fontSize: 32),
  //               ),
  //               const SizedBox(
  //                 height: 24,
  //               ),
  //               Text(errorDetails.stack.toString())
  //             ],
  //           ),
  //         ),
  //       ),
  //     );

  runApp(const MyApp());
}

// ##################### DART #########################

void fromDartDoc() {
  var zoneSpecification = ZoneSpecification(
    print: (self, parent, zone, line) {
      log('### 📰 print-log 📰 ### : $line');
    },
  );
  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, stack) {
    log('###  💥 Platform Error 💥 ###   $error');
  }, zoneSpecification: zoneSpecification);
}
