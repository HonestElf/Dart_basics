import 'dart:math';

String parseDecimalToBinary(int number) {
  String binaryNumber = '';
  while (number > 1) {
    int remainder = number % 2;
    binaryNumber += remainder.toString();

    number ~/= 2;
  }
  binaryNumber += number.toString();
  return binaryNumber.split('').reversed.join('');
}

int parseBinaryToDecimal(String binary) {
  int decimal = 0;
  List<String> list = binary.split('').reversed.join('').split('');
  for (int i = 0; i < list.length; i++) {
    num mult = pow(2, i);
    decimal += mult.toInt() * int.parse(list[i]);
  }

  return decimal;
}
