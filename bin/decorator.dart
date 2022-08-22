abstract class Notifier {
  void send(String message);
}

abstract class BaseDecorator implements Notifier {
  final Notifier _notifier;

  BaseDecorator(Notifier notifier) : _notifier = notifier;

  @override
  void send(String message) {
    _notifier.send(message);
  }
}

class EmailNotifier implements Notifier {
  @override
  void send(String message) {
    print("Send email: $message");
  }
}

class SMSNotifier extends BaseDecorator {
  SMSNotifier(Notifier notifier) : super(notifier);

  @override
  void send(String message) {
    super.send(message);
    print("Send sms: $message");
  }
}

class FacebookNotifier extends BaseDecorator {
  FacebookNotifier(Notifier notifier) : super(notifier);

  @override
  void send(String message) {
    super.send(message);
    print("Send message to facebook: $message");
  }
}
