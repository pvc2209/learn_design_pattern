import '../button/button.dart';
import '../checkbox/checkbox.dart';

abstract class GUIFactory {
  Button createButton();
  CheckBox createCheckBox();
}
