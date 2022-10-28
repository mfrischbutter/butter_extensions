extension ButterStringValidator on String {
  /// Returns true if the string length is between the given values
  bool lengthBetween(int min, int max) {
    return length >= min && length <= max;
  }

  /// Returns true if the string length is smaller than or equals the given value
  bool minLenght(int min) {
    return length >= min;
  }

  // Returns true if the string length is greater than or equals the given value
  bool maxLength(int max) {
    return length <= max;
  }
}
