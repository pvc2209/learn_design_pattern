import 'decorator.dart';
import 'strategy.dart';

void demoStrategy() {
  final player = Player(weapon: Bow());

  player.attack();
  player.changeWeapon(Knife());
  player.attack();
}

void demoDecorator({
  required String message,
  required bool smsEnabled,
  required bool facebookEnabled,
}) {
  Notifier stack = EmailNotifier();

  if (smsEnabled) {
    stack = SMSNotifier(stack);
  }

  if (facebookEnabled) {
    stack = FacebookNotifier(stack);
  }

  stack.send(message);
}

void main() {
  // demoStrategy();

  demoDecorator(
    message: 'This is test message...',
    smsEnabled: false,
    facebookEnabled: true,
  );
}
