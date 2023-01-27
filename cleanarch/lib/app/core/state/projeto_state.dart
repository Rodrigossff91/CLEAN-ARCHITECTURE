import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProjetoState<S extends StatefulWidget, C extends GetxController>
    extends State<S> {
  C get controller => Get.find();

  late final C controllerr;
  @override
  void initState() {
    controllerr = Get.find<C>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    onReady();
    super.initState();
  }
}

void onReady() {}
