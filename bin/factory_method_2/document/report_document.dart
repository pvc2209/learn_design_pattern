import 'document.dart';

class ReportDocument extends Document {
  @override
  void load() {
    print("Report document loaded");
  }

  @override
  void show() {
    print("Report document shown");
  }
}
