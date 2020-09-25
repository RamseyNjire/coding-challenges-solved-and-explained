function birthdayCakeCandles(candles) {
  return candles.sort((a, b) => b - a).filter((c) => c == candles[0]).length;
}
