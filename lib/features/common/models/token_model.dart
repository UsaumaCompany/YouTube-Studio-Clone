import 'package:json_annotation/json_annotation.dart';

part 'token_model.g.dart';

@JsonSerializable()
class TokenModel {
  @JsonKey(name: 'access', defaultValue: '')
  final String access;
  @JsonKey(name: 'is_new_user', defaultValue: false)
  final bool isNewUser;
  @JsonKey(name: 'refresh', defaultValue: '')
  final String refresh;
  @JsonKey(name: 'expire_date', defaultValue: 0)
  final int expireDate;

  TokenModel({
    required this.access,
    required this.refresh,
    required this.isNewUser,
    required this.expireDate,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
  Map<String, dynamic> toJson() => _$TokenModelToJson(this);
}
