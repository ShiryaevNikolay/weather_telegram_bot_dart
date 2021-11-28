import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:teledart/model.dart';

void main() {
  var telegram = Telegram(envVars['BOT_TOKEN']!);
  var event = Event((await telegram.getMe()).username!);
  
  TeleDart(telegram, event)
    ..start()
    ..onMessage(keyword: 'Fight for freedom')
      .listen((message) => message.reply('Stand with Hong Kong'));
}
