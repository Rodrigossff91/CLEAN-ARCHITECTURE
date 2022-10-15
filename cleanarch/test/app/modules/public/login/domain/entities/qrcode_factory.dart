import 'package:cleanarch/app/core/models/model_factory.dart';
import 'package:cleanarch/app/modules/public/login/domain/entities/qrcode.dart';

class QrcodeFactory extends ModelFactory<Qrcode> {
  @override
  Qrcode generateFake() => Qrcode('aaa');
}
