import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../response/weather_response.dart';
import 'weather_urls.dart';

part 'weather_api.g.dart';

/// Класс для работы с апи прогноза погоды
@RestApi(baseUrl: WeatherUrls.base)
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  static const _apiKey = 'e3b61d77078ab0540790b2d2042b23c5';
  static const _cityDefault = 'Voronezh';
  static const _langDefault = 'ru';
  static const _unitsDefault = 'metric';

  /// Получение текущего прогноза погоды
  @GET(WeatherUrls.currentWeather)
  Future<WeatherResponse> getWeather({
    @Query('q') String cityName = WeatherApi._cityDefault,
    @Query('appid') String appid = WeatherApi._apiKey,
    @Query('lang') String lang = WeatherApi._langDefault,
    @Query('units') String units = WeatherApi._unitsDefault,
  });
}
