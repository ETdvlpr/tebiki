// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicResponse _$$_BasicResponseFromJson(Map<String, dynamic> json) =>
    _$_BasicResponse(
      statusCode: json['statusCode'] as int? ?? 0,
      status: json['status'] as String?,
      message: _toString(json['message']),
      error: _toString(json['error']),
      data: json['data'],
    );

Map<String, dynamic> _$$_BasicResponseToJson(_$_BasicResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
