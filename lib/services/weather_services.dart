import 'package:dio/dio.dart';
import 'package:weather_app/constants/api_constants.dart';

class WeatherServices {
  Dio dio = new Dio();
  Future<Map<String, dynamic>> getWeather(String location) async {
    try {
      final response = await dio.get(
        ApiConstants.baseUrl,
        queryParameters: {
          'q': location,
          'key': ApiConstants.apiKey,
          'aqi': 'no'
        },
      );
      return response.data;
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
