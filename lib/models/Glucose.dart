class Glucose {
  double max;
  double lowerNormal;
  double lowerHealthy;
  double upperHealthy;
  double upperNormal;

  Glucose._(this.max, this.lowerNormal, this.lowerHealthy, this.upperHealthy, this.upperNormal);

  factory Glucose() {
    return Glucose._(500.0, 54.0, 70.0, 140.0, 200.0);
  }
}