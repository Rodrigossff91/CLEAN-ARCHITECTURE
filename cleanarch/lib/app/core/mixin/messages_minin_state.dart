import 'package:flutter/material.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    // Abrir Error -- Context Disponivel
  }

  void showInfo(String message) {
    // Abrir Info -- Context Disponivel
  }

  void showSuccess(String message) {
    // Abrir Sucess -- Context Disponivel
  }
}
