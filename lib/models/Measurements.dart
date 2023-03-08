import 'package:medgrab/models/BloodPressure.dart';
import 'package:medgrab/models/Electromyography.dart';
import 'package:medgrab/models/Glucose.dart';
import 'package:medgrab/models/HeartRate.dart';

class Measurements {
  String name;
  int age;
  double heartRateReading;
  double glucoseReading;
  double bloodPressureReading;
  double electromyographyReading;

  HeartRate heartRateValues;
  Glucose glucoseValues;
  BloodPressure bloodPressureValues;
  Electromyography electromyographyValues;

  Measurements._(this.name, this.age, this.heartRateReading, this.glucoseReading, this.bloodPressureReading, this.electromyographyReading, this.heartRateValues,
      this.glucoseValues, this.bloodPressureValues, this.electromyographyValues);

  factory Measurements({required String name, required int age, required double heartRateReading, required double glucoseReading, required double bloodPressureReading,
    required double electromyographyReading}) {
    return Measurements._(name, age, heartRateReading, glucoseReading, bloodPressureReading, electromyographyReading, HeartRate(age: age),
        Glucose(), BloodPressure(), Electromyography());
  }
}