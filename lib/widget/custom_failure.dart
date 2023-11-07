import 'dart:developer';

class CustomFailure {
  final String? msg;
  CustomFailure(this.msg) {
    log(msg ?? '');
  }
}
