import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ffuf_second_capstone/models/message_thread.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@unfreezed()
class UserProfile with _$UserProfile {
  factory UserProfile({
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String password,
    required String profilePictureUrl,
    List<MessageThread>? userMessageThreads,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) => _$UserProfileFromJson(json);
}

// flutter pub run build_runner build --delete-conflicting-outputs