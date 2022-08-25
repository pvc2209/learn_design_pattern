import '../document/blank_document.dart';
import '../document/certificate_document.dart';
import '../document/document.dart';
import '../document/report_document.dart';
import 'application.dart';

class MyApplication extends Application {
  @override
  Document createDocument(DocumentType type) {
    switch (type) {
      case DocumentType.BLANK:
        return BlankDocument();
      case DocumentType.REPORT:
        return ReportDocument();
      case DocumentType.CERTIFICATE:
        return CertificateDocument();
    }
  }
}
