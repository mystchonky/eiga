import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';

class EigaOAuth2Client {
  OAuth2Client client;
  OAuth2Helper helper;

  EigaOAuth2Client() {
    client = OAuth2Client(
        authorizeUrl: 'http://anilist.co/api/v2/oauth/authorize',
        tokenUrl: 'http://anilist.co/api/v2/oauth/authorize',
        redirectUri: 'com.eiga.app://redirect',
        customUriScheme: 'com.eiga.app');

    helper = OAuth2Helper(
      client,
      clientId: '4721',
      grantType: OAuth2Helper.IMPLICIT_GRANT,
    );
  }

  Future<AccessTokenResponse> tokenValid() async {
    var tknResp = await getTokenFromStorage();
    //print(tknResp);
    return tknResp;
  }

  Future<AccessTokenResponse> getTokenFromStorage() async {
    return await helper.getTokenFromStorage();
  }

  Future<AccessTokenResponse> generateToken() async {
    return await helper.fetchToken();
  }

  deleteToken() async {
    await helper.disconnect();
  }
}
