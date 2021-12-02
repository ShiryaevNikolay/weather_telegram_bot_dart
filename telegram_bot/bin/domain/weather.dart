/// Модель прогноза погоды
class Weather {
  final List<WeatherEntity> weather;
  final MainEntity main;
  final int visibility;
  final WindEntity? wind;
  final RainEntity? rain;
  final CloudsEntity? clouds;
  final String city;

  Weather({
    required this.weather,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.city,
  });
}

class WeatherEntity {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherEntity({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}

class MainEntity {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;

  MainEntity({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });
}

class WindEntity {
  final int speed;
  final int deg;

  WindEntity({
    required this.speed,
    required this.deg,
  });
}

class RainEntity {
  final int time;

  RainEntity({required this.time});
}

class CloudsEntity {
  final int all;

  CloudsEntity({required this.all});
}