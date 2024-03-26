import 'dart:async';

import 'package:dio/dio.dart';
import 'package:news_app/data/get_data_model.dart';

class GetNewsRepo {
  Future<GatNewsModel> getData() async {
    try {
      final dio = Dio();
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=tesla&from=2024-02-25&sortBy=publishedAt&apiKey=09871f57fda14b16820136cd2b00cbbd');
      GatNewsModel newsData = GatNewsModel.fromJson(response.data);

      return newsData;
    } catch (er) {
      throw Exception('Error');
    }
  }
}
