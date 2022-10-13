import 'package:cleanarch/app/core/presenter/projeto_presenter.dart';

abstract class SplashPresenter extends ProjetoPresenter {
  Future<void> checkLogin();
}
