class Electromyography {
  double max;
  double lowerNormal;
  double lowerHealthy;
  double upperHealthy;
  double upperNormal;

  Electromyography._(this.max, this.lowerNormal, this.lowerHealthy, this.upperHealthy, this.upperNormal);

  factory Electromyography() {
    return Electromyography._(50, 10, 20, 30, 40);
  }
}