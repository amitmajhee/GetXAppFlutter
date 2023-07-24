import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../cotrollers/payment_controller.dart';

class PaymentListView extends StatelessWidget {
  final paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments App  '),
      ),
      body: Obx(() {
        if (paymentController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          var payments = paymentController.paymentResponse.value.data;
          return ListView.builder(
            itemCount: payments.length,
            itemBuilder: (context, index) {
              var payment = payments[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment Code: ${payment.paymentCode}'),
                      Text('Entry Date: ${payment.entryDate}'),
                      Text('Payment Type: ${payment.paymentType}'),
                      Text('Dealer Code: ${payment.dealerCode}'),
                      Text('Shop Name: ${payment.shopName}'),
                      Text('Dealer Name: ${payment.dealerName}'),
                      Text('Mobile No: ${payment.mobileNo}'),
                      Text('Received: ${payment.recive}'),
                      Text('Payment: ${payment.payment}'),
                      Text('Remark: ${payment.remark}'),
                      Text('Button Name: ${payment.buttonName}'),
                      Text('Payment Status: ${payment.paymentStatus}'),
                    ],
                  ),
                ),
              );            },
          );
        }
      }),
    );

  }
}
