import 'package:dio/dio.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'domain/weather.dart';
import 'service/api/weather_api.dart';
import 'service/repository/weather_repository.dart';

const token = '2146129739:AAEyZuPEuvRtDPvuKaiBrXoTls-K-0yU1fg';

Future<void> main() async {

  final weatherApi = WeatherApi(Dio());
  final repository = WeatherRepository(weatherApi: weatherApi);

  var telegram =
      Telegram(token);
  var event = Event((await telegram.getMe()).username!);

  TeleDart(telegram, event)
    ..start()
    ..onMessage(keyword: 'Fight for freedom')
        .listen((message) => message.reply('Stand with Hong Kong'))
    ..onCommand('start')
        .listen((message) async {
          final weather = await repository.getWeather();

          message.reply(_getMessageFromWeather(weather));
         })
    ..onCommand('weather');
}

/// Формирование сообщение с прогнозом погоды
  String _getMessageFromWeather(Weather weather) {
    final wind = weather.wind;
    return """
    ${weather.city ?? ''}
    Погода: ${weather.weather[0].description}
    Температура: ${weather.main.temp.toInt()} C
    По ощущениям: ${weather.main.feelsLike.toInt()} C
    Влажность: ${weather.main.humidity}%
    ${
      wind == null ? '' : 'Ветер: ${wind.speed} м/с'
    }
    Видимость: ${(weather.visibility / 1000)} км
    Давление: ${weather.main.pressure} гПа
    """;
  }
