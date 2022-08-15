import 'dart:convert';

import 'package:first_project/api/api_constants.dart';
import 'package:first_project/api/api_model.dart';
import 'package:http/http.dart' as http;

class ApiRepository {
  Future<ApiModel> getData() async {
    final uri = Uri.parse(ApiConstants.apiUrl);
    final response = await http.get(uri);
    print('response : $response');
    print('response  data: ${response.body}');
    final dataJson = jsonDecode(response.body);
    return ApiModel.fromJson(dataJson);
  }
}
