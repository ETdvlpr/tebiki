import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

/// helper functions
String? _toString(dynamic val) {
  if (val == null) {
    return null;
  }
  if (val is String) {
    if (val.isEmpty) return null;
    return val;
  }
  if (val is List<dynamic>) {
    return val.map((e) => "$e").toList().join("\n");
  }
  return val.toString();
}

@freezed
class BasicResponse with _$BasicResponse {
  factory BasicResponse({
    @Default(0) int statusCode,
    String? status,
    @JsonKey(fromJson: _toString) String? message,
    @JsonKey(fromJson: _toString) String? error,
    dynamic data,
  }) = _BasicResponse;

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);
}
