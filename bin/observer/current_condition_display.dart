import 'display_element.dart';
import 'observer.dart';
import 'subject.dart';

class CurrentConditionsDisplay implements DisplayElement, Observer {
  final Subject weatherData;
  double _temperature = 0.0;
  double _humidity = 0.0;

  CurrentConditionsDisplay({
    required this.weatherData,
  }) {
    weatherData.registerObserver(this);
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _temperature = temp;
    _humidity = humidity;
    display();
  }

  @override
  void display() {
    print(
        'Current conditions: $_temperature F degrees and $_humidity % humidity');
  }
}
