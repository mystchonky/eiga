import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
// ignore: implementation_imports
import 'package:oauth2_client/src/oauth2_utils.dart';

class CustomOAuth2Client {
  late _OAuth2Client client;
  late OAuth2Helper helper;

  CustomOAuth2Client() {
    client = _OAuth2Client();
    helper = OAuth2Helper(
      client,
      clientId: '4721',
      grantType: OAuth2Helper.IMPLICIT_GRANT,
    );
  }

  Future<AccessTokenResponse?> tokenValid() async {
    final tknResp = await getTokenFromStorage();
    return tknResp;
  }

  Future<AccessTokenResponse?> getTokenFromStorage() async {
    return helper.getTokenFromStorage();
  }

  Future<AccessTokenResponse> generateToken() async {
    return helper.fetchToken();
  }

  Future<void> deleteToken() async {
    await helper.disconnect();
  }
}

class _OAuth2Client extends OAuth2Client {
  _OAuth2Client()
      : super(
          authorizeUrl: 'http://anilist.co/api/v2/oauth/authorize',
          tokenUrl: 'http://anilist.co/api/v2/oauth/authorize',
          redirectUri: 'com.eiga.app://redirect',
          customUriScheme: 'com.eiga.app',
        );

  @override
  String getAuthorizeUrl({
    required String clientId,
    String responseType = 'code',
    String? redirectUri,
    List<String>? scopes,
    bool enableState = true,
    String? state,
    String? codeChallenge,
    Map<String, dynamic>? customParams,
  }) {
    final params = <String, dynamic>{
      'response_type': responseType,
      'client_id': clientId
    };

    // if (redirectUri != null && redirectUri.isNotEmpty) {
    //   params['redirect_uri'] = redirectUri;
    // }

    if (scopes != null && scopes.isNotEmpty) params['scope'] = scopes;

    if (enableState && state != null && state.isNotEmpty) {
      params['state'] = state;
    }

    if (codeChallenge != null && codeChallenge.isNotEmpty) {
      params['code_challenge'] = codeChallenge;
      params['code_challenge_method'] = 'S256';
    }

    if (customParams != null) {
      params.addAll(customParams);
    }

    return OAuth2Utils.addParamsToUrl(authorizeUrl, params);
  }
}
