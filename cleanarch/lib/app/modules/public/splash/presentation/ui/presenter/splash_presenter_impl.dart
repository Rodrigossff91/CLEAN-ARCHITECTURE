import 'package:cleanarch/app/modules/public/splash/presentation/ui/presenter/splash_presenter.dart';
import 'package:cleanarch/app/modules/public/splash/presentation/ui/view/splahs_view.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;
  @override
  Future<void> checkLogin() async {
    _view.showLoader();
    _view.logged(true);
  }

  @override
  set view(view) => _view;
}
