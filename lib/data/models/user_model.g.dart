// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      email: json['email'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'createdAt': instance.createdAt?.toIso8601String(),
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'dob': instance.dob?.toIso8601String(),
    };
