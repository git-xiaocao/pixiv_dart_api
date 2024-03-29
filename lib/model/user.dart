import 'package:json_annotation/json_annotation.dart';

import 'profile.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  int id;
  String name;
  String account;
  @JsonKey(name: 'profile_image_urls')
  ProfileImageUrls profileImageUrls;

  ///当[User]在Comment中的时候没有这个字段
  @JsonKey(name: 'is_followed')
  bool? isFollowed;

  User(
    this.id,
    this.name,
    this.account,
    this.profileImageUrls,
    this.isFollowed,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
