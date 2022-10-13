import 'package:flutter/material.dart';

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen == true;
      // Abri Loader   ---  Context Disponivel
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      // Fechar Loader
    }
  }
}
