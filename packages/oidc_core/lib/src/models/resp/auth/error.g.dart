// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OidcErrorAuthResponse _$OidcErrorAuthResponseFromJson(
        Map<String, dynamic> json) =>
    OidcErrorAuthResponse(
      error: json['error'] as String,
      errorDescription: json['error_description'] as String?,
      errorUri: json['error_uri'] as String?,
      sessionState: json['session_state'] as String?,
      state: json['state'] as String?,
    );
