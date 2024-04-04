import 'dart:convert';
import 'package:http/http.dart' as http;

class WhatsappOtp {
  static Future<Map<String, dynamic>> fetchBitcoinPrice(String coinName) async {
    final url = Uri.parse(
        'https://api-dev.blocksdecoded.com/v1/coins/$coinName?currency=USD&language=en');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}
