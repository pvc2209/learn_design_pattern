import 'dart:math';

import '../animal/cat.dart';
import '../animal/dog.dart';
import '../animal/duck.dart';
import '../animal/ianimal.dart';
import 'ianimal_factory.dart';

class RandomAnimalFactory implements IAnimalFactory {
  @override
  IAnimal createAnimal() {
    Random random = Random();

    int randomNumber = random.nextInt(3);

    if (randomNumber == 0) {
      return Duck();
    } else if (randomNumber == 1) {
      return Dog();
    } else {
      return Cat();
    }
  }
}
