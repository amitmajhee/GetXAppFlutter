import 'package:getxapp/models/payment_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PaymentService {
  Future<PaymentResponse> fetchPayments(String dealerCode) async {
    final Map<String, String> requestBody = {
      'dealer_code': dealerCode,
    };

    final response = await http.post(
      Uri.parse('http://maatricks.co.in/api/dealer_payment.php'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: requestBody,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return PaymentResponse.fromJson(jsonData);
    } else {
      throw Exception('Failed to load payments');
    }
  }
}