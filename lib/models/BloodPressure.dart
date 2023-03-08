class BloodPressure {
  double max;
  double lowerNormal;
  double lowerHealthy;
  double upperHealthy;
  double upperNormal;

  BloodPressure._(this.max, this.lowerNormal, this.lowerHealthy, this.upperHealthy, this.upperNormal);

  factory BloodPressure() {
    return BloodPressure._(220, 90, 90, 120, 140);
  }
}