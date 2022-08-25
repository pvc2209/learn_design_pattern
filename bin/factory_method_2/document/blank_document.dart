import 'document.dart';

class BlankDocument extends Document {
  @override
  void load() {
    print("Blank document loaded");
  }

  @override
  void show() {
    print("Blank document shown");
  }
}
