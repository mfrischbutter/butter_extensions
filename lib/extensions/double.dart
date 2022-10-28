extension ButterDoubleConverter on double {
  double celsiusToFahrenheit() => this * 1.8 + 32;
  double fahrenheitToCelsius() => (this - 32) / 1.8;
}
