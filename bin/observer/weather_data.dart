import 'observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  final List<Observer> _observers = [];
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _pressure = 0.0;

  @override
  void notifyObservers() {
    for (int i = 0; i < _observers.length; ++i) {
      _observers[i].update(_temperature, _humidity, _pressure);
    }
  }

  @override
  void registerObserver(Observer o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    _observers.remove(o);
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;

    measurementsChanged();
  }
}
