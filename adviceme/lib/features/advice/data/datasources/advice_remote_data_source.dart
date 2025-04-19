import 'dart:convert';

import 'package:adviceme/features/advice/data/models/advice_model.dart';
import 'package:http/http.dart' as http;

class AdviceRemoteDataSource {
  Future<AdviceModel> getAdviceFromApi() async {
    final response = await http.get(
      Uri.parse("https://api.adviceslip.com/advice"),
    );
    final data = jsonDecode(response.body);
    return AdviceModel.fromJson(data["slip"]);
  }
}
