abstract class AppAssets {
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();

  final String noAvatar = 'lib/assets/images/bitmap/no_avatar.png';
  final String logo = 'lib/assets/images/bitmap/logo.png';
  final String engine = 'lib/assets/images/bitmap/engine.png';
  final String home = 'lib/assets/images/bitmap/home.png';
  final String sms = 'lib/assets/images/bitmap/sms.png';
  final String story = 'lib/assets/images/bitmap/story.png';

  final String people = 'lib/assets/images/bitmap/people.png';
  final String heart = 'lib/assets/images/bitmap/heart.png';
  final String cardoor = 'lib/assets/images/bitmap/cardoor.png';
  final String background = 'lib/assets/images/bitmap/background.png';
}

class _Svg {
  const _Svg();
  final String logo = 'lib/assets/images/svg/logo.svg';
  final String account = 'lib/assets/images/svg/account.svg';
  final String password = 'lib/assets/images/svg/password.svg';
}
