class InvalidCurrencyException implements Exception {
  String errorMessage() => 'This currency is not in the currency list';
}
