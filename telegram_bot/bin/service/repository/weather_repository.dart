import '../../domain/weather.dart';
import '../api/weather_api.dart';
import '../response/weather_response.dart';

/// Репозиторий для прогноза погоды
class WeatherRepository {
  WeatherRepository({required this.weatherApi});

  final WeatherApi weatherApi;

  /// Получение прогноза погоды
  Future<Weather> getWeather() async {
    final response = await weatherApi.getWeather();
    return mapWeatherFromResponse(response);
  }

  Weather mapWeatherFromResponse(WeatherResponse response) {
    return Weather(
      weather: response.weather.map(mapWeatherEntityFromResponse).toList(),
      main: mapMainErntityFromResponse(response.main),
      visibility: response.visibility,
      wind: mapWindEnittyFromResponse(response.wind),
      rain: mapRainEntityFromResponse(response.rain),
      clouds: mapCloudsEntityFromResponse(response.clouds),
      city: response.city,
    );
  }

  WeatherEntity mapWeatherEntityFromResponse(WeatherEntityResponse response) {
    return WeatherEntity(
      id: response.id,
      main: response.main,
      description: response.description,
      icon: response.icon,
    );
  }

  MainEntity mapMainErntityFromResponse(MainEntityResponse response) {
    return MainEntity(
      temp: response.temp, 
      feelsLike: response.feelsLike, 
      tempMin: response.tempMin, 
      tempMax: response.tempMax, 
      pressure: response.pressure, 
      humidity: response.humidity,
    );
  }

  WindEntity? mapWindEnittyFromResponse(WindEntityResponse? response) {
    if (response == null) {
      return null;
    }
    return WindEntity(
      speed: response.speed, 
      deg: response.deg,
    );
  }

  RainEntity? mapRainEntityFromResponse(RainEntityResponse? response) {
    if (response == null) {
      return null;
    }
    return RainEntity(time: response.time);
  }

  CloudsEntity? mapCloudsEntityFromResponse(CloudsEntityResponse? response) {
    if (response == null) {
      return null;
    }
    return CloudsEntity(all: response.all);
  }
}