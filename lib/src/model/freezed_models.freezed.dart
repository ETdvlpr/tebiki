// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) {
  return _BasicResponse.fromJson(json);
}

/// @nodoc
mixin _$BasicResponse {
  int get statusCode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toString)
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toString)
  String? get error => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicResponseCopyWith<BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicResponseCopyWith<$Res> {
  factory $BasicResponseCopyWith(
          BasicResponse value, $Res Function(BasicResponse) then) =
      _$BasicResponseCopyWithImpl<$Res, BasicResponse>;
  @useResult
  $Res call(
      {int statusCode,
      String? status,
      @JsonKey(fromJson: _toString) String? message,
      @JsonKey(fromJson: _toString) String? error,
      dynamic data});
}

/// @nodoc
class _$BasicResponseCopyWithImpl<$Res, $Val extends BasicResponse>
    implements $BasicResponseCopyWith<$Res> {
  _$BasicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicResponseCopyWith<$Res>
    implements $BasicResponseCopyWith<$Res> {
  factory _$$_BasicResponseCopyWith(
          _$_BasicResponse value, $Res Function(_$_BasicResponse) then) =
      __$$_BasicResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode,
      String? status,
      @JsonKey(fromJson: _toString) String? message,
      @JsonKey(fromJson: _toString) String? error,
      dynamic data});
}

/// @nodoc
class __$$_BasicResponseCopyWithImpl<$Res>
    extends _$BasicResponseCopyWithImpl<$Res, _$_BasicResponse>
    implements _$$_BasicResponseCopyWith<$Res> {
  __$$_BasicResponseCopyWithImpl(
      _$_BasicResponse _value, $Res Function(_$_BasicResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BasicResponse(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicResponse with DiagnosticableTreeMixin implements _BasicResponse {
  _$_BasicResponse(
      {this.statusCode = 0,
      this.status,
      @JsonKey(fromJson: _toString) this.message,
      @JsonKey(fromJson: _toString) this.error,
      this.data});

  factory _$_BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BasicResponseFromJson(json);

  @override
  @JsonKey()
  final int statusCode;
  @override
  final String? status;
  @override
  @JsonKey(fromJson: _toString)
  final String? message;
  @override
  @JsonKey(fromJson: _toString)
  final String? error;
  @override
  final dynamic data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BasicResponse(statusCode: $statusCode, status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BasicResponse'))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicResponse &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, status, message,
      error, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicResponseCopyWith<_$_BasicResponse> get copyWith =>
      __$$_BasicResponseCopyWithImpl<_$_BasicResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicResponseToJson(
      this,
    );
  }
}

abstract class _BasicResponse implements BasicResponse {
  factory _BasicResponse(
      {final int statusCode,
      final String? status,
      @JsonKey(fromJson: _toString) final String? message,
      @JsonKey(fromJson: _toString) final String? error,
      final dynamic data}) = _$_BasicResponse;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$_BasicResponse.fromJson;

  @override
  int get statusCode;
  @override
  String? get status;
  @override
  @JsonKey(fromJson: _toString)
  String? get message;
  @override
  @JsonKey(fromJson: _toString)
  String? get error;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_BasicResponseCopyWith<_$_BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
