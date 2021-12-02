import 'package:json_annotation/json_annotation.dart';

part 'weather_response.g.dart';

/// Модель ответа запроса прогноза погоды
@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: 'weather')
  final List<WeatherEntityResponse> weather;
  @JsonKey(name: 'main')
  final MainEntityResponse main;
  @JsonKey(name: 'visibility')
  final int visibility;
  @JsonKey(name: 'wind')
  final WindEntityResponse? wind;
  @JsonKey(name: 'rain')
  final RainEntityResponse? rain;
  @JsonKey(name: 'clouds')
  final CloudsEntityResponse? clouds;
  @JsonKey(name: 'city')
  final String? city;

  WeatherResponse({
    required this.weather,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.city,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return _$WeatherResponseFromJson(json);
  }
}

@JsonSerializable()
class WeatherEntityResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'main')
  final String main;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'icon')
  final String icon;

  WeatherEntityResponse({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$WeatherEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class MainEntityResponse {
  @JsonKey(name: 'temp')
  final double temp;
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @JsonKey(name: 'pressure')
  final int pressure;
  @JsonKey(name: 'humidity')
  final int humidity;

  MainEntityResponse({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory MainEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$MainEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class WindEntityResponse {
  @JsonKey(name: 'speed')
  final int speed;
  @JsonKey(name: 'deg')
  final int deg;

  WindEntityResponse({
    required this.speed,
    required this.deg,
  });

  factory WindEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$WindEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class RainEntityResponse {
  @JsonKey(name: 'time')
  final int time;

  RainEntityResponse({required this.time});

  factory RainEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$RainEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class CloudsEntityResponse {
  @JsonKey(name: 'all')
  final int all;

  CloudsEntityResponse({required this.all});

  factory CloudsEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$CloudsEntityResponseFromJson(json);
  }
}
