import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:teledart/model.dart';

import 'service/repository/weather_repository.dart';

const token = '2146129739:AAEyZuPEuvRtDPvuKaiBrXoTls-K-0yU1fg';

Future<void> main() async {

  final repository = WeatherRepository();

  var telegram =
      Telegram(token);
  var event = Event((await telegram.getMe()).username!);

  TeleDart(telegram, event)
    ..start()
    ..onMessage(keyword: 'Fight for freedom')
        .listen((message) => message.reply('Stand with Hong Kong'))
    ..onCommand('start')
        .listen((message) { })
    ..onCommand('weather');
}
