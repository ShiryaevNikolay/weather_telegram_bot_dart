import 'package:json_annotation/json_annotation.dart';

/// Модель ответа запроса прогноза погоды
@JsonSerializable()
class WeatherResponse {
  final List<WeatherEntityResponse> weather;
  final MainEntityResponse main;
  final int visibility;
  final WindEntityResponse? wind;
  final RainEntityResponse? rain;
  final CloudsEntityResponse? clouds;
  final String city;

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
  final int id;
  final String main;
  final String description;
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
  final double temp;
  @Json
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;

  MainEntityResponse({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });

  factory MainEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$MainEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class WindEntityResponse {
  final int speed;
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
  final int time;

  RainEntityResponse({required this.time});

  factory RainEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$RainEntityResponseFromJson(json);
  }
}

@JsonSerializable()
class CloudsEntityResponse {
  final int all;

  CloudsEntityResponse({required this.all});

  factory CloudsEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$CloudsEntityResponseFromJson(json);
  }
}
