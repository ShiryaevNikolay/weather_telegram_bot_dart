// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherEntityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainEntityResponse.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      wind: json['wind'] == null
          ? null
          : WindEntityResponse.fromJson(json['wind'] as Map<String, dynamic>),
      rain: json['rain'] == null
          ? null
          : RainEntityResponse.fromJson(json['rain'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : CloudsEntityResponse.fromJson(
              json['clouds'] as Map<String, dynamic>),
      city: json['city'] as String?,
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'rain': instance.rain,
      'clouds': instance.clouds,
      'city': instance.city,
    };

WeatherEntityResponse _$WeatherEntityResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherEntityResponse(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherEntityResponseToJson(
        WeatherEntityResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

MainEntityResponse _$MainEntityResponseFromJson(Map<String, dynamic> json) =>
    MainEntityResponse(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$MainEntityResponseToJson(MainEntityResponse instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

WindEntityResponse _$WindEntityResponseFromJson(Map<String, dynamic> json) =>
    WindEntityResponse(
      speed: json['speed'] as int,
      deg: json['deg'] as int,
    );

Map<String, dynamic> _$WindEntityResponseToJson(WindEntityResponse instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };

RainEntityResponse _$RainEntityResponseFromJson(Map<String, dynamic> json) =>
    RainEntityResponse(
      time: json['time'] as int,
    );

Map<String, dynamic> _$RainEntityResponseToJson(RainEntityResponse instance) =>
    <String, dynamic>{
      'time': instance.time,
    };

CloudsEntityResponse _$CloudsEntityResponseFromJson(
        Map<String, dynamic> json) =>
    CloudsEntityResponse(
      all: json['all'] as int,
    );

Map<String, dynamic> _$CloudsEntityResponseToJson(
        CloudsEntityResponse instance) =>
    <String, dynamic>{
      'all': instance.all,
    };
