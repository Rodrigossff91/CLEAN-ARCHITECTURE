import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ApiClient>(() => ApiClient(URLAPI, Dio(), false));
    // Get.put(AuthRepository());
    // Get.put(AuthService());
    // Get.put(AuthController(), permanent: true);
  }
}
