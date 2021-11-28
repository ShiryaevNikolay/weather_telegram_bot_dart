import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:teledart/model.dart';

Future<void> main() async {

  var telegram =
      Telegram('2146129739:AAEyZuPEuvRtDPvuKaiBrXoTls-K-0yU1fg');
  var event = Event((await telegram.getMe()).username!);

  TeleDart(telegram, event)
    ..start()
    ..onMessage(keyword: 'Fight for freedom')
        .listen((message) => message.reply('Stand with Hong Kong'));
}
