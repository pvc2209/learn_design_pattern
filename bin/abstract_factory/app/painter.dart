import '../button/button.dart';
import '../checkbox/checkbox.dart';
import '../factory/gui_factory.dart';

class Painter {
  late Button _button;
  late CheckBox _checkBox;

  Painter(GUIFactory factory) {
    _button = factory.createButton();
    _checkBox = factory.createCheckBox();
  }

  void pain() {
    _button.paint();
    _checkBox.paint();
  }
}
