import 'package:flutter_test/flutter_test.dart';

import 'package:whatsapp_otp/whatsapp_otp.dart';

void main() {
  test('adds one to input values', () {
    final whatsappOtp = WhatsappOtp.fetchBitcoinPrice("bitcoin");
    print(whatsappOtp);
  });
}
