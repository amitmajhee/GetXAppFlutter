class PaymentData{
  final String paymentCode;
  final String entryDt;
  final String entryDate;
  final String paymentType;



  final String dealerCode;
  final String shopName;
  final String dealerName;
  final String mobileNo;
  final String recive;
  final String payment;
  //final String transactionId;
  final String remark;
//  final String loginCode;
  final String buttonName;
  final String paymentStatus;

  PaymentData({
    required this.paymentCode,
    required this.entryDt,
    required this.entryDate,
    required this.paymentType,
    required this.dealerCode,
    required this.shopName,
    required this.dealerName,
    required this.mobileNo,
    required this.recive,
    required this.payment,
    // required this.transactionId,
    required this.remark,
    //  required this.loginCode,
    required this.buttonName,
    required this.paymentStatus,
  });

  factory PaymentData.fromJson(Map<String, dynamic> json) {
    return PaymentData(
      paymentCode: json['payment_code'],
      entryDt: json['entry_dt'],
      entryDate: json['entry_date'],
      paymentType: json['payment_type'],
      dealerCode: json['dealer_code'],
      shopName: json['shop_name'],
      dealerName: json['dealer_name'],
      mobileNo: json['mobile_no'],
      recive: json['recive'],
      payment: json['payment'],
      //transactionId: json['transaction_id'],
      remark: json['remark'],
      //loginCode: json['login_code'],
      buttonName: json['button_name'],
      paymentStatus: json['payment_status'],
    );
  }
}