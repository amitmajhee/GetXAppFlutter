import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxapp/models/payment_response.dart';

import '../repository/payment_repository.dart';

class PaymentController extends GetxController {
  final _paymentService = PaymentService().obs;
  var paymentResponse = PaymentResponse(apiStatus: 0, message: '', data: []).obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPayments('33'); // Replace '33' with the desired dealer_code
    super.onInit();
  }

  void fetchPayments(String dealerCode) async {
    try {
      isLoading.value = true;
      var response = await _paymentService.value.fetchPayments(dealerCode);
      paymentResponse.value = response;
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}