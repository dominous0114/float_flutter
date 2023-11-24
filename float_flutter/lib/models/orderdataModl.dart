class OrderdataModel {
  OrderdataModel({
    required this.status,
    required this.code,
    required this.msg,
    required this.data,
  });

  final bool? status;
  final int? code;
  final String? msg;
  final Data? data;

  OrderdataModel copyWith({
    bool? status,
    int? code,
    String? msg,
    Data? data,
  }) {
    return OrderdataModel(
      status: status ?? this.status,
      code: code ?? this.code,
      msg: msg ?? this.msg,
      data: data ?? this.data,
    );
  }

  factory OrderdataModel.fromJson(Map<String, dynamic> json) {
    return OrderdataModel(
      status: json["status"],
      code: json["code"],
      msg: json["msg"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "msg": msg,
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    required this.orders,
  });

  final List<Order> orders;

  Data copyWith({
    List<Order>? orders,
  }) {
    return Data(
      orders: orders ?? this.orders,
    );
  }

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      orders: json["orders"] == null ? [] : List<Order>.from(json["orders"]!.map((x) => Order.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "orders": orders.map((x) => x.toJson()).toList(),
      };
}

class Order {
  Order({
    required this.id,
    required this.userId,
    required this.employeeId,
    required this.employeeName,
    required this.code,
    required this.courierCode,
    required this.isBulky,
    required this.categoryId,
    required this.orderType,
    required this.isImported,
    required this.basePrice,
    required this.remoteArea,
    required this.realPrice,
    required this.discount,
    required this.discountPrice,
    required this.returnFee,
    required this.weight,
    required this.width,
    required this.length,
    required this.height,
    required this.name,
    required this.phone,
    required this.address,
    required this.zipcode,
    required this.cardId,
    required this.useOnlabel,
    required this.labelName,
    required this.labelPhone,
    required this.labelAddress,
    required this.labelZipcode,
    required this.dstName,
    required this.dstPhone,
    required this.dstAddress,
    required this.dstZipcode,
    required this.bankId,
    required this.accountName,
    required this.accountNumber,
    required this.branchNo,
    required this.codIship,
    required this.codAmount,
    required this.codNonVat,
    required this.codBalance,
    required this.codFee,
    required this.codVat,
    required this.codVerified,
    required this.pod,
    required this.podDate,
    required this.withdrawId,
    required this.billingId,
    required this.invoiced,
    required this.isInsured,
    required this.productValue,
    required this.insuranceFee,
    required this.insuranceNonVat,
    required this.insuranceVat,
    required this.remark,
    required this.shippingId,
    required this.printCount,
    required this.printedDate,
    required this.facebookSendCount,
    required this.smsSendCount,
    required this.deliveryCount,
    required this.status,
    required this.packedDate,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.orderAmount,
    required this.orderAfterDiscount,
    required this.orderDiscountType,
    required this.orderDiscountPercent,
    required this.orderDiscountBaht,
    required this.orderPriceTotal,
    required this.orderAmountBeforeVat,
    required this.orderAmountVat,
    required this.orderShippingPrice,
    required this.orderShippingType,
    required this.orderDeposit,
    required this.orderBalance,
    required this.orderPaymentDate,
    required this.fileAttach,
    required this.isVat,
    required this.isIncludeVat,
    required this.isShowPrice,
    required this.isDiscount,
    required this.distributionId,
    required this.customerId,
    required this.billDeposit,
    required this.billPaymentDate,
    required this.billSlip,
    required this.billStatus,
    required this.facebookName,
    required this.facebookId,
    required this.pageId,
    required this.isOptional,
    required this.isTemperature,
    required this.makesendOrderId,
    required this.courierLogo,
    required this.trackNo,
    required this.statusIcon,
    required this.statusName,
    required this.statusColor,
  });

  final int? id;
  final int? userId;
  final dynamic employeeId;
  final dynamic employeeName;
  final dynamic code;
  final String? courierCode;
  final int? isBulky;
  final int? categoryId;
  final int? orderType;
  final int? isImported;
  final int? basePrice;
  final int? remoteArea;
  final int? realPrice;
  final int? discount;
  final int? discountPrice;
  final String? returnFee;
  final int? weight;
  final int? width;
  final int? length;
  final int? height;
  final String? name;
  final String? phone;
  final String? address;
  final String? zipcode;
  final dynamic cardId;
  final int? useOnlabel;
  final dynamic labelName;
  final dynamic labelPhone;
  final dynamic labelAddress;
  final dynamic labelZipcode;
  final String? dstName;
  final String? dstPhone;
  final String? dstAddress;
  final String? dstZipcode;
  final dynamic bankId;
  final dynamic accountName;
  final dynamic accountNumber;
  final dynamic branchNo;
  final int? codIship;
  final String? codAmount;
  final String? codNonVat;
  final String? codBalance;
  final String? codFee;
  final String? codVat;
  final int? codVerified;
  final int? pod;
  final dynamic podDate;
  final int? withdrawId;
  final dynamic billingId;
  final int? invoiced;
  final int? isInsured;
  final int? productValue;
  final int? insuranceFee;
  final int? insuranceNonVat;
  final int? insuranceVat;
  final dynamic remark;
  final int? shippingId;
  final int? printCount;
  final DateTime? printedDate;
  final int? facebookSendCount;
  final int? smsSendCount;
  final int? deliveryCount;
  final int? status;
  final dynamic packedDate;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? orderAmount;
  final int? orderAfterDiscount;
  final int? orderDiscountType;
  final int? orderDiscountPercent;
  final int? orderDiscountBaht;
  final int? orderPriceTotal;
  final double? orderAmountBeforeVat;
  final double? orderAmountVat;
  final int? orderShippingPrice;
  final int? orderShippingType;
  final int? orderDeposit;
  final int? orderBalance;
  final String? orderPaymentDate;
  final String? fileAttach;
  final int? isVat;
  final int? isIncludeVat;
  final int? isShowPrice;
  final int? isDiscount;
  final int? distributionId;
  final int? customerId;
  final int? billDeposit;
  final DateTime? billPaymentDate;
  final String? billSlip;
  final int? billStatus;
  final dynamic facebookName;
  final dynamic facebookId;
  final dynamic pageId;
  final int? isOptional;
  final int? isTemperature;
  final String? makesendOrderId;
  final String? courierLogo;
  final String? trackNo;
  final String? statusIcon;
  final String? statusName;
  final String? statusColor;

  Order copyWith({
    int? id,
    int? userId,
    dynamic employeeId,
    dynamic employeeName,
    dynamic code,
    String? courierCode,
    int? isBulky,
    int? categoryId,
    int? orderType,
    int? isImported,
    int? basePrice,
    int? remoteArea,
    int? realPrice,
    int? discount,
    int? discountPrice,
    String? returnFee,
    int? weight,
    int? width,
    int? length,
    int? height,
    String? name,
    String? phone,
    String? address,
    String? zipcode,
    dynamic cardId,
    int? useOnlabel,
    dynamic labelName,
    dynamic labelPhone,
    dynamic labelAddress,
    dynamic labelZipcode,
    String? dstName,
    String? dstPhone,
    String? dstAddress,
    String? dstZipcode,
    dynamic bankId,
    dynamic accountName,
    dynamic accountNumber,
    dynamic branchNo,
    int? codIship,
    String? codAmount,
    String? codNonVat,
    String? codBalance,
    String? codFee,
    String? codVat,
    int? codVerified,
    int? pod,
    dynamic podDate,
    int? withdrawId,
    dynamic billingId,
    int? invoiced,
    int? isInsured,
    int? productValue,
    int? insuranceFee,
    int? insuranceNonVat,
    int? insuranceVat,
    dynamic remark,
    int? shippingId,
    int? printCount,
    DateTime? printedDate,
    int? facebookSendCount,
    int? smsSendCount,
    int? deliveryCount,
    int? status,
    dynamic packedDate,
    dynamic deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? orderAmount,
    int? orderAfterDiscount,
    int? orderDiscountType,
    int? orderDiscountPercent,
    int? orderDiscountBaht,
    int? orderPriceTotal,
    double? orderAmountBeforeVat,
    double? orderAmountVat,
    int? orderShippingPrice,
    int? orderShippingType,
    int? orderDeposit,
    int? orderBalance,
    String? orderPaymentDate,
    String? fileAttach,
    int? isVat,
    int? isIncludeVat,
    int? isShowPrice,
    int? isDiscount,
    int? distributionId,
    int? customerId,
    int? billDeposit,
    DateTime? billPaymentDate,
    String? billSlip,
    int? billStatus,
    dynamic facebookName,
    dynamic facebookId,
    dynamic pageId,
    int? isOptional,
    int? isTemperature,
    String? makesendOrderId,
    String? courierLogo,
    String? trackNo,
    String? statusIcon,
    String? statusName,
    String? statusColor,
  }) {
    return Order(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      code: code ?? this.code,
      courierCode: courierCode ?? this.courierCode,
      isBulky: isBulky ?? this.isBulky,
      categoryId: categoryId ?? this.categoryId,
      orderType: orderType ?? this.orderType,
      isImported: isImported ?? this.isImported,
      basePrice: basePrice ?? this.basePrice,
      remoteArea: remoteArea ?? this.remoteArea,
      realPrice: realPrice ?? this.realPrice,
      discount: discount ?? this.discount,
      discountPrice: discountPrice ?? this.discountPrice,
      returnFee: returnFee ?? this.returnFee,
      weight: weight ?? this.weight,
      width: width ?? this.width,
      length: length ?? this.length,
      height: height ?? this.height,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      zipcode: zipcode ?? this.zipcode,
      cardId: cardId ?? this.cardId,
      useOnlabel: useOnlabel ?? this.useOnlabel,
      labelName: labelName ?? this.labelName,
      labelPhone: labelPhone ?? this.labelPhone,
      labelAddress: labelAddress ?? this.labelAddress,
      labelZipcode: labelZipcode ?? this.labelZipcode,
      dstName: dstName ?? this.dstName,
      dstPhone: dstPhone ?? this.dstPhone,
      dstAddress: dstAddress ?? this.dstAddress,
      dstZipcode: dstZipcode ?? this.dstZipcode,
      bankId: bankId ?? this.bankId,
      accountName: accountName ?? this.accountName,
      accountNumber: accountNumber ?? this.accountNumber,
      branchNo: branchNo ?? this.branchNo,
      codIship: codIship ?? this.codIship,
      codAmount: codAmount ?? this.codAmount,
      codNonVat: codNonVat ?? this.codNonVat,
      codBalance: codBalance ?? this.codBalance,
      codFee: codFee ?? this.codFee,
      codVat: codVat ?? this.codVat,
      codVerified: codVerified ?? this.codVerified,
      pod: pod ?? this.pod,
      podDate: podDate ?? this.podDate,
      withdrawId: withdrawId ?? this.withdrawId,
      billingId: billingId ?? this.billingId,
      invoiced: invoiced ?? this.invoiced,
      isInsured: isInsured ?? this.isInsured,
      productValue: productValue ?? this.productValue,
      insuranceFee: insuranceFee ?? this.insuranceFee,
      insuranceNonVat: insuranceNonVat ?? this.insuranceNonVat,
      insuranceVat: insuranceVat ?? this.insuranceVat,
      remark: remark ?? this.remark,
      shippingId: shippingId ?? this.shippingId,
      printCount: printCount ?? this.printCount,
      printedDate: printedDate ?? this.printedDate,
      facebookSendCount: facebookSendCount ?? this.facebookSendCount,
      smsSendCount: smsSendCount ?? this.smsSendCount,
      deliveryCount: deliveryCount ?? this.deliveryCount,
      status: status ?? this.status,
      packedDate: packedDate ?? this.packedDate,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      orderAmount: orderAmount ?? this.orderAmount,
      orderAfterDiscount: orderAfterDiscount ?? this.orderAfterDiscount,
      orderDiscountType: orderDiscountType ?? this.orderDiscountType,
      orderDiscountPercent: orderDiscountPercent ?? this.orderDiscountPercent,
      orderDiscountBaht: orderDiscountBaht ?? this.orderDiscountBaht,
      orderPriceTotal: orderPriceTotal ?? this.orderPriceTotal,
      orderAmountBeforeVat: orderAmountBeforeVat ?? this.orderAmountBeforeVat,
      orderAmountVat: orderAmountVat ?? this.orderAmountVat,
      orderShippingPrice: orderShippingPrice ?? this.orderShippingPrice,
      orderShippingType: orderShippingType ?? this.orderShippingType,
      orderDeposit: orderDeposit ?? this.orderDeposit,
      orderBalance: orderBalance ?? this.orderBalance,
      orderPaymentDate: orderPaymentDate ?? this.orderPaymentDate,
      fileAttach: fileAttach ?? this.fileAttach,
      isVat: isVat ?? this.isVat,
      isIncludeVat: isIncludeVat ?? this.isIncludeVat,
      isShowPrice: isShowPrice ?? this.isShowPrice,
      isDiscount: isDiscount ?? this.isDiscount,
      distributionId: distributionId ?? this.distributionId,
      customerId: customerId ?? this.customerId,
      billDeposit: billDeposit ?? this.billDeposit,
      billPaymentDate: billPaymentDate ?? this.billPaymentDate,
      billSlip: billSlip ?? this.billSlip,
      billStatus: billStatus ?? this.billStatus,
      facebookName: facebookName ?? this.facebookName,
      facebookId: facebookId ?? this.facebookId,
      pageId: pageId ?? this.pageId,
      isOptional: isOptional ?? this.isOptional,
      isTemperature: isTemperature ?? this.isTemperature,
      makesendOrderId: makesendOrderId ?? this.makesendOrderId,
      courierLogo: courierLogo ?? this.courierLogo,
      trackNo: trackNo ?? this.trackNo,
      statusIcon: statusIcon ?? this.statusIcon,
      statusName: statusName ?? this.statusName,
      statusColor: statusColor ?? this.statusColor,
    );
  }

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json["id"],
      userId: json["user_id"],
      employeeId: json["employee_id"],
      employeeName: json["employee_name"],
      code: json["code"],
      courierCode: json["courier_code"],
      isBulky: json["is_bulky"],
      categoryId: json["category_id"],
      orderType: json["order_type"],
      isImported: json["is_imported"],
      basePrice: json["base_price"],
      remoteArea: json["remote_area"],
      realPrice: json["real_price"],
      discount: json["discount"],
      discountPrice: json["discount_price"],
      returnFee: json["return_fee"],
      weight: json["weight"],
      width: json["width"],
      length: json["length"],
      height: json["height"],
      name: json["name"],
      phone: json["phone"],
      address: json["address"],
      zipcode: json["zipcode"],
      cardId: json["card_id"],
      useOnlabel: json["use_onlabel"],
      labelName: json["label_name"],
      labelPhone: json["label_phone"],
      labelAddress: json["label_address"],
      labelZipcode: json["label_zipcode"],
      dstName: json["dst_name"],
      dstPhone: json["dst_phone"],
      dstAddress: json["dst_address"],
      dstZipcode: json["dst_zipcode"],
      bankId: json["bank_id"],
      accountName: json["account_name"],
      accountNumber: json["account_number"],
      branchNo: json["branch_no"],
      codIship: json["cod_iship"],
      codAmount: json["cod_amount"],
      codNonVat: json["cod_non_vat"],
      codBalance: json["cod_balance"],
      codFee: json["cod_fee"],
      codVat: json["cod_vat"],
      codVerified: json["cod_verified"],
      pod: json["pod"],
      podDate: json["pod_date"],
      withdrawId: json["withdraw_id"],
      billingId: json["billing_id"],
      invoiced: json["invoiced"],
      isInsured: json["is_insured"],
      productValue: json["product_value"],
      insuranceFee: json["insurance_fee"],
      insuranceNonVat: json["insurance_non_vat"],
      insuranceVat: json["insurance_vat"],
      remark: json["remark"],
      shippingId: json["shipping_id"],
      printCount: json["print_count"],
      printedDate: DateTime.tryParse(json["printed_date"] ?? ""),
      facebookSendCount: json["facebook_send_count"],
      smsSendCount: json["sms_send_count"],
      deliveryCount: json["delivery_count"],
      status: json["status"],
      packedDate: json["packed_date"],
      deletedAt: json["deleted_at"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      orderAmount: json["order_amount"],
      orderAfterDiscount: json["order_after_discount"],
      orderDiscountType: json["order_discount_type"],
      orderDiscountPercent: json["order_discount_percent"],
      orderDiscountBaht: json["order_discount_baht"],
      orderPriceTotal: json["order_price_total"],
      orderAmountBeforeVat: json["order_amount_before_vat"],
      orderAmountVat: json["order_amount_vat"],
      orderShippingPrice: json["order_shipping_price"],
      orderShippingType: json["order_shipping_type"],
      orderDeposit: json["order_deposit"],
      orderBalance: json["order_balance"],
      orderPaymentDate: json["order_payment_date"],
      fileAttach: json["file_attach"],
      isVat: json["is_vat"],
      isIncludeVat: json["is_include_vat"],
      isShowPrice: json["is_show_price"],
      isDiscount: json["is_discount"],
      distributionId: json["distribution_id"],
      customerId: json["customer_id"],
      billDeposit: json["bill_deposit"],
      billPaymentDate: DateTime.tryParse(json["bill_payment_date"] ?? ""),
      billSlip: json["bill_slip"],
      billStatus: json["bill_status"],
      facebookName: json["facebook_name"],
      facebookId: json["facebook_id"],
      pageId: json["page_id"],
      isOptional: json["is_optional"],
      isTemperature: json["is_temperature"],
      makesendOrderId: json["makesend_order_id"],
      courierLogo: json["courier_logo"],
      trackNo: json["track_no"],
      statusIcon: json["status_icon"],
      statusName: json["status_name"],
      statusColor: json["status_color"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "employee_id": employeeId,
        "employee_name": employeeName,
        "code": code,
        "courier_code": courierCode,
        "is_bulky": isBulky,
        "category_id": categoryId,
        "order_type": orderType,
        "is_imported": isImported,
        "base_price": basePrice,
        "remote_area": remoteArea,
        "real_price": realPrice,
        "discount": discount,
        "discount_price": discountPrice,
        "return_fee": returnFee,
        "weight": weight,
        "width": width,
        "length": length,
        "height": height,
        "name": name,
        "phone": phone,
        "address": address,
        "zipcode": zipcode,
        "card_id": cardId,
        "use_onlabel": useOnlabel,
        "label_name": labelName,
        "label_phone": labelPhone,
        "label_address": labelAddress,
        "label_zipcode": labelZipcode,
        "dst_name": dstName,
        "dst_phone": dstPhone,
        "dst_address": dstAddress,
        "dst_zipcode": dstZipcode,
        "bank_id": bankId,
        "account_name": accountName,
        "account_number": accountNumber,
        "branch_no": branchNo,
        "cod_iship": codIship,
        "cod_amount": codAmount,
        "cod_non_vat": codNonVat,
        "cod_balance": codBalance,
        "cod_fee": codFee,
        "cod_vat": codVat,
        "cod_verified": codVerified,
        "pod": pod,
        "pod_date": podDate,
        "withdraw_id": withdrawId,
        "billing_id": billingId,
        "invoiced": invoiced,
        "is_insured": isInsured,
        "product_value": productValue,
        "insurance_fee": insuranceFee,
        "insurance_non_vat": insuranceNonVat,
        "insurance_vat": insuranceVat,
        "remark": remark,
        "shipping_id": shippingId,
        "print_count": printCount,
        "printed_date": printedDate?.toIso8601String(),
        "facebook_send_count": facebookSendCount,
        "sms_send_count": smsSendCount,
        "delivery_count": deliveryCount,
        "status": status,
        "packed_date": packedDate,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "order_amount": orderAmount,
        "order_after_discount": orderAfterDiscount,
        "order_discount_type": orderDiscountType,
        "order_discount_percent": orderDiscountPercent,
        "order_discount_baht": orderDiscountBaht,
        "order_price_total": orderPriceTotal,
        "order_amount_before_vat": orderAmountBeforeVat,
        "order_amount_vat": orderAmountVat,
        "order_shipping_price": orderShippingPrice,
        "order_shipping_type": orderShippingType,
        "order_deposit": orderDeposit,
        "order_balance": orderBalance,
        "order_payment_date": orderPaymentDate,
        "file_attach": fileAttach,
        "is_vat": isVat,
        "is_include_vat": isIncludeVat,
        "is_show_price": isShowPrice,
        "is_discount": isDiscount,
        "distribution_id": distributionId,
        "customer_id": customerId,
        "bill_deposit": billDeposit,
        "bill_payment_date": billPaymentDate?.toIso8601String(),
        "bill_slip": billSlip,
        "bill_status": billStatus,
        "facebook_name": facebookName,
        "facebook_id": facebookId,
        "page_id": pageId,
        "is_optional": isOptional,
        "is_temperature": isTemperature,
        "makesend_order_id": makesendOrderId,
        "courier_logo": courierLogo,
        "track_no": trackNo,
        "status_icon": statusIcon,
        "status_name": statusName,
        "status_color": statusColor,
      };
}
