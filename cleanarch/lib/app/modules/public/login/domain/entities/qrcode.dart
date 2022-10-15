// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Qrcode {
  final String? qrcodeLogin;

  Qrcode(this.qrcodeLogin);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qrcodeLogin': qrcodeLogin,
    };
  }

  factory Qrcode.fromMap(Map<String, dynamic> map) {
    return Qrcode(
      map['qrcodeLogin'] != null ? map['qrcodeLogin'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Qrcode.fromJson(String source) =>
      Qrcode.fromMap(json.decode(source) as Map<String, dynamic>);
}
