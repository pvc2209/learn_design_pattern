abstract class Weapon {
  void useWeapon();
}

class Sword implements Weapon {
  @override
  void useWeapon() {
    print("Slash");
  }
}

class Bow implements Weapon {
  @override
  void useWeapon() {
    print("Shoot");
  }
}

class Knife implements Weapon {
  @override
  void useWeapon() {
    print("Cut");
  }
}

class Player {
  late Weapon _weapon;

  Player({required Weapon weapon}) {
    _weapon = weapon;
  }

  void changeWeapon(Weapon weapon) {
    _weapon = weapon;
  }

  void attack() => _weapon.useWeapon();
}
