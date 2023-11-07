// ignore_for_file: unused_element, non_constant_identifier_names, empty_catches

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _throwError() {
    /// Um objeto Error representa uma falha do programa que
    /// o programador deveria ter evitado.
    throw Error();
  }

  void _throwException() {
    /// Uma Exceção tem como objetivo transmitir
    /// informações ao usuário sobre uma falha,
    /// para que o erro possa ser resolvido programaticamente.
    throw Exception('Email inválido');
  }

  void _nativeCall() {
    const MethodChannel('channel').invokeMethod('minhaFuncaoNativa');
  }

  void _HandlerThrowError() {
    try {
      throw Error();
    } catch (exception) {
      // FlutterError.reportError(FlutterErrorDetails(
      //   exception: exception,
      //   stack: stack,
      //   library: 'example library',
      //   context: ErrorDescription('while doing something'),
      // ));
    }
  }

  void _HandlerThrowException() {
    try {
      throw Exception();
    } catch (exception) {
      // FlutterError.reportError(FlutterErrorDetails(
      //   exception: exception,
      //   stack: stack,
      //   library: 'example library',
      //   context: ErrorDescription('while doing something'),
      // ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ### Expostas ###
          // _throwError();
          // _throwException();

          // ### Native ###
          // _nativeCall();

          // ### Tratadas ###
          _HandlerThrowError();
          _HandlerThrowException();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.error),
      ),
    );
  }
}
