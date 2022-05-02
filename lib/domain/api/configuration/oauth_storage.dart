import 'package:flutter_starting_app/domain/api/requests/token_request.dart';
import 'package:flutter_starting_app/domain/api/responses/token.dart';
import 'package:flutter_starting_app/models/exceptions/unauthenticated_exception.dart';

class OAuthStorage {
  late String _clientId;
  late String _clientSecret;
  late String _endpoint;
  Token? _token;
  DateTime? _expirationDate;

  void init({required String clientId, required String clientSecret, required String endpoint}) {
    this._clientId = clientId;
    this._clientSecret = clientSecret;
    this._endpoint = endpoint;
  }

  String get endpoint => _endpoint;

  Token? get token => _token;

  DateTime? get expirationDate => _expirationDate;


  TokenRequest getPasswordTokenRequest({required String email, required String password}) =>
      TokenRequest.password(
          client_id: _clientId, client_secret: _clientSecret, username: email, password: password);


  TokenRequest getRefreshTokenRequest() {

    if(token?.refresh_token == null) throw UnauthenticatedException();

    return TokenRequest.refresh(
          client_id: _clientId, client_secret: _clientSecret, refresh_token: token!.refresh_token);
  }

  void saveToken(Token token) {
    this._token = token;
    if(token.expires_in != null) {
      _expirationDate = DateTime.now();
      _expirationDate!.add(Duration(seconds: _token!.expires_in!));
    }
  }
}
