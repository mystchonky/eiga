import 'package:oauth2_client/oauth2_client.dart';
import 'package:meta/meta.dart';
import 'package:oauth2_client/src/oauth2_utils.dart';

class EigaOAuth2Client extends OAuth2Client {
  EigaOAuth2Client()
      : super(
            authorizeUrl: 'http://anilist.co/api/v2/oauth/authorize',
            tokenUrl: 'http://anilist.co/api/v2/oauth/authorize',
            redirectUri: 'com.eiga.app://redirect',
            customUriScheme: 'com.eiga.app');

  @override
  String getAuthorizeUrl(
      {@required String clientId,
      String responseType = 'code',
      String redirectUri,
      List<String> scopes,
      bool enableState = true,
      String state,
      String codeChallenge,
      Map<String, dynamic> customParams}) {
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

    if (customParams != null && customParams is Map) {
      params.addAll(customParams);
    }

    return OAuth2Utils.addParamsToUrl(authorizeUrl, params);
  }
}
