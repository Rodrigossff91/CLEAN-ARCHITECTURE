import 'package:cleanarch/app/modules/public/splash/presentation/ui/presenter/splash_presenter.dart';
import 'package:cleanarch/app/modules/public/splash/presentation/ui/view/splash_view_impl.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;
  const SplashPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
