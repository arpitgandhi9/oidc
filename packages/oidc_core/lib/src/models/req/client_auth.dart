import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'client_auth.g.dart';

@JsonSerializable(
  createFactory: false,
  includeIfNull: false,
)
class OidcClientAuthentication {
  @JsonKey(name: 'client_id')
  final String clientId;
  @JsonKey(name: 'client_secret')
  final String? clientSecret;

  const OidcClientAuthentication({
    required this.clientId,
    this.clientSecret,
  });

  String getBasicAuth() => base64.encode(
        utf8.encode(
          [clientId, if (clientSecret != null) clientSecret].join(':'),
        ),
      );
  Map<String, String> getBodyParameters() =>
      _$OidcClientAuthenticationToJson(this).cast<String, String>();
}
