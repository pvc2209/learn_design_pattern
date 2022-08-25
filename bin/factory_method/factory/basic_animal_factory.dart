import '../animal/cat.dart';
import '../animal/dog.dart';
import '../animal/duck.dart';
import '../animal/ianimal.dart';
import 'ianimal_factory.dart';

class BasicAnimalFactory implements IAnimalFactory {
  int _index = 0;
  @override
  IAnimal createAnimal() {
    if (_index == 0) {
      _index++;

      return Dog();
    }

    if (_index == 1) {
      _index++;

      return Cat();
    }

    _index = 0;
    return Duck();
  }
}
