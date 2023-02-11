// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_onesignal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: json['id'] as String?,
      data: json['data'] == null
          ? null
          : NotificationMetadata.fromJson(json['data'] as Map<String, dynamic>),
      contents: json['contents'] == null
          ? null
          : LocalizationModel.fromJson(
              json['contents'] as Map<String, dynamic>),
      subjectType: json['subject_type'] as String?,
      sendAfter: json['send_after'] == null
          ? null
          : DateTime.parse(json['send_after'] as String),
      read: json['read'] as bool?,
    )..subjectId = json['subject_id'] as String?;

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'contents': instance.contents,
      'subject_type': instance.subjectType,
      'subject_id': instance.subjectId,
      'send_after': instance.sendAfter?.toIso8601String(),
      'read': instance.read,
    };

NotificationMetadata _$NotificationMetadataFromJson(
        Map<String, dynamic> json) =>
    NotificationMetadata();

Map<String, dynamic> _$NotificationMetadataToJson(
        NotificationMetadata instance) =>
    <String, dynamic>{};
