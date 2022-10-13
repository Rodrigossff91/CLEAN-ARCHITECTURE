import 'package:cleanarch/app/core/mixin/loader_mixin_state.dart';
import 'package:cleanarch/app/modules/public/splash/presentation/ui/view/splahs_view.dart';
import 'package:flutter/material.dart';

import '../pages/splash_page.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void logged(bool isLogged) {
    // Regra
  }
}
