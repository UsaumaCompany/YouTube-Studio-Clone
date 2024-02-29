// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) => TokenModel(
      access: json['access'] as String? ?? '',
      refresh: json['refresh'] as String? ?? '',
      isNewUser: json['is_new_user'] as bool? ?? false,
      expireDate: json['expire_date'] as int? ?? 0,
    );

Map<String, dynamic> _$TokenModelToJson(TokenModel instance) =>
    <String, dynamic>{
      'access': instance.access,
      'is_new_user': instance.isNewUser,
      'refresh': instance.refresh,
      'expire_date': instance.expireDate,
    };
