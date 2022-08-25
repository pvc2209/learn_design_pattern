import '../button/macos_button.dart';
import '../checkbox/checkbox.dart';
import '../button/button.dart';
import '../checkbox/macos_checkbox.dart';
import 'gui_factory.dart';

class MacOsFactory implements GUIFactory {
  @override
  Button createButton() {
    return MacOsButton();
  }

  @override
  CheckBox createCheckBox() {
    return MacOsCheckBox();
  }
}
