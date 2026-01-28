// ignore_for_file: avoid_print

import 'dart:developer';

class Logger {
  // static const String _black = '\x1B[30m';
  static const String _red = '\x1B[31m';
  static const String _green = '\x1B[32m';
  static const String _yellow = '\x1B[33m';

  // static const String _blue = '\x1B[34m';
  static const String _magenta = '\x1B[35m';
  static const String _cyan = '\x1B[36m';
  static const String _white = '\x1B[37m';
  static const String _reset = '\x1B[0m';

  static void write(String text, {bool isError = false}) {
    log('$_white** =============== Response =================== **$_reset');
    log('$_green** $text $_magenta[$isError] $_reset');
  }

  static void printError(String text) {
    log('$_white** =============== Error ==================== **$_reset');
    log('$_red** $text $_reset');
  }

  static void printSuccess(String text) {
    log('$_white** ============== Success =================== **$_reset');
    log(
      '$_green** $text $_reset',
      name: '** ============== Success =================== **',
    );
  }

  static void printWarning(String text) {
    log('$_white** =============== Warning ================== **$_reset');
    log('$_yellow** $text $_reset');
  }

  static void printInfo(String text) {
    log('$_white** ================ Info ==================== **$_reset');
    log('$_cyan** $text $_reset');
  }
}
