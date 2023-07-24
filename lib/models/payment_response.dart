

import 'package:getxapp/models/payment_data.dart';

class PaymentResponse {
  final int apiStatus;
  final String message;
  final List<PaymentData> data;

  PaymentResponse({
    required this.apiStatus,
    required this.message,
    required this.data,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) {
    return PaymentResponse(
      apiStatus: int.parse(json['api_status']),
      message: json['message'],
      data: List<PaymentData>.from(json['Data'].map((x) => PaymentData.fromJson(x))),
    );
  }
}