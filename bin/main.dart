import 'dart:math';

import 'abstract_factory/app/painter.dart';
import 'abstract_factory/factory/gui_factory.dart';
import 'abstract_factory/factory/macos_factory.dart';
import 'abstract_factory/factory/window_factory.dart';
import 'decorator.dart';
import 'factory_method/factory/basic_animal_factory.dart';
import 'factory_method/factory/ianimal_factory.dart';
import 'factory_method/factory/random_animal_factory.dart';
import 'factory_method_2/factory/application.dart';
import 'factory_method_2/factory/my_application.dart';
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

void demoFactoryMethod() {
  Random random = Random();
  int randomNumber = random.nextInt(2);

  IAnimalFactory factory;

  if (randomNumber == 0) {
    factory = BasicAnimalFactory();
  } else {
    factory = RandomAnimalFactory();
  }

  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
  print(factory.createAnimal().getName());
}

void demoFactoryMethod2() {
  final Application application = MyApplication();

  // Giả sử user sẽ chọn những loại document nào đó ở runtime
  DocumentType userChoice = DocumentType.CERTIFICATE;

  // Thì đối tượng được tạo ra sẽ tương ứng với lựa chọn của user
  application.newDocument(userChoice);
}

void demoAbstractFactory() {
  Painter painter;
  GUIFactory factory;

  // Giả sử có 1 hàm check để xác định đang ở Windows hay không
  String osName = "windows";

  if (osName == "windows") {
    factory = WindowFactory();
    painter = Painter(factory);
  } else {
    factory = MacOsFactory();
    painter = Painter(factory);
  }

  painter.pain();
}

void main() {
  // demoStrategy();

  // demoDecorator(
  //   message: 'This is test message...',
  //   smsEnabled: false,
  //   facebookEnabled: true,
  // );

  // demoFactoryMethod();

  // demoFactoryMethod2();

  demoAbstractFactory();
}
