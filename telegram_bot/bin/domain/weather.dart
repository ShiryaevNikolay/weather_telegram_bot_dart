/// Модель прогноза погоды
class Weather {
  final List<WeatherEntity> weather;
  final MainEntity main;
  final int visibility;
  final WindEntity? wind;
  final RainEntity? rain;
  final CloudsEntity? clouds;
  final String? city;

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
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  MainEntity({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
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