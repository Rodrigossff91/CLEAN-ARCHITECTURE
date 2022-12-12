class Assets {
  Assets._();

  static final sound = _AssetsSound._();
  static final images = _AssetsImages._();
}

class _AssetsSound {
  _AssetsSound._();

  String get helloWorldMP3 => "assets/sound/hello world.mp3";
  String get hiACC => "assets/hi.acc";
}

class _AssetsImages {
  _AssetsImages._();

  final icon = _AssetsImagesIcon._();
  final background = _AssetsImagesBackground._();
}

class _AssetsImagesIcon {
  _AssetsImagesIcon._();

  String get chatIconSVG => "assets/images/icon/chatIcon.svg";
  String get facebookPNG => "assets/images/icon/Facebook.png";
  String get googlePlusJPG => "assets/images/icon/google-plus.jps";
}

class _AssetsImagesBackground {
  _AssetsImagesBackground._();

  String get chatIconSVG => "assets/images/icon/chatIcon.svg";
  String get facebookPNG => "assets/images/icon/Facebook.png";
  String get googlePlusJPG => "assets/images/icon/google-plus.jps";
}
