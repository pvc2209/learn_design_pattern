import 'decorator.dart';
import 'strategy.dart';

void demoStrategy() {
  final player = Player(weapon: Bow());

  player.attack();
  player.changeWeapon(Knife());
  player.attack();
}

void demoDecorator() {
  Notifier stack = EmailNotifier();
  stack = SMSNotifier(stack);
  stack = FacebookNotifier(stack);

  stack.send("Hello World");
}

void main() {
  // demoStrategy();

  demoDecorator();
}
