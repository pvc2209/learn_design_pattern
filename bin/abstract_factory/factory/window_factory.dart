import '../button/window_button.dart';
import '../checkbox/checkbox.dart';
import '../button/button.dart';
import '../checkbox/window_checkbox.dart';
import 'gui_factory.dart';

class WindowFactory implements GUIFactory {
  @override
  Button createButton() {
    return WindowButton();
  }

  @override
  CheckBox createCheckBox() {
    return WindowCheckBox();
  }
}
