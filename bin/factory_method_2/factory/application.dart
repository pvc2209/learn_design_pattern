// ignore_for_file: constant_identifier_names

import '../document/document.dart';

enum DocumentType {
  BLANK,
  REPORT,
  CERTIFICATE,
}

abstract class Application {
  Document createDocument(DocumentType type);

  Document newDocument(DocumentType type) {
    Document document = createDocument(type);
    document.load();
    document.show();
    return document;
  }
}
