// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:ytquran/api/settings.dart';

import 'errors.dart';

class BaseAPI {
  Uri getAPI(String path) {
    return Uri.parse(
        "${ApiSetting.REQUEST_SCHEMA}://${ApiSetting.API_HOST}/${ApiSetting.API_PATH}/$path");
  }

   Future<Map<String, dynamic>> get(Uri api,
      {Map<String, dynamic>? queryParams}) async {
    try {
      var requestHeaders = headers();
      if (queryParams != null && queryParams.isNotEmpty) {
        api = api.replace(queryParameters: queryParams);
      }
      http.Response response = await http.get(api, headers: requestHeaders);
      final jsonData = jsonDecode(response.body);

      if (response.statusCode == HttpStatus.unauthorized) {
        throw UnauthorizedException();
      } else if (response.statusCode == HttpStatus.internalServerError) {
        throw ServerErrorException();
      } else if (jsonData["message"] != null) {
        print("Helloww");
        throw ExceededApiRequest();
      } else {
        return jsonData;
      }
    } on SocketException {
      throw NoInternetException();
    }
  }

  Map<String, String> headers() {
    var headers = {
      "Content-Type": "application/json",
    };

    return headers;
  }
}
