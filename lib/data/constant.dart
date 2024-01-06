import 'package:flutter/cupertino.dart';

@immutable
class Constant {
  static Constant constant = Constant();

  final BASE_URL = 'https://wesmart.in/';
  final BASE_URL_EXTENSION = 'backend/public/api/';
  final BROADCAST_ATTACHMENT_URL =
      'https://wesmart.in/backend/public/files/broadcast/';
  final HOMEWORK_ATTACHMENT_URL =
      'https://wesmart.in/backend/public/files/homework/';
  final PROFILE_PIC_URL = 'https://wesmart.in/backend/public/documents/';
  final HOMEWORK_SUBMIT_ATTACHMENT_URL =
      'https://wesmart.in/backend/public/files/homework/';

  final FACEBOOK_URL =
      'https://www.facebook.com/profile.php?id=100066942759832';
  final INSTAGRAM_URL = 'https://www.instagram.com/schoolingsmart';
  final YOUTUBE_URL =
      'https://www.youtube.com/channel/UC9spMZl95qAvKdhty8Il3ZQ';
  final WEB_APP_URL = 'https://wesmart.in/';
  final TERMS_CONDITION_URL = 'https://www.schoolingsmart.com/terms-conditions';
  final PRIVACY_POLICY_URL = 'https://www.schoolingsmart.com/privacy-policy';
  final REFUND_URL = 'https://www.schoolingsmart.com/refund-and-cancellation';

  static const teacher = 'Teacher';
  static const student = 'Student';
  static const driver = 'Driver';

  final LOGGED_USER = 'LOGGED_USER';
  final USERNAME = 'USERNAME';
  final PASSWORD = 'PASSWORD';
  final MODE = 'MODE';

  const Constant();
}
