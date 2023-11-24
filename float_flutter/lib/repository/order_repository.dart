import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:float_flutter/models/orderdataModl.dart';

class OrderRepository {
  Future<OrderdataModel> getOrder({required int orderprint}) async {
    try {
      var headers = {'Content-Type': 'application/json', 'Authorization': 'Bearer DyaaSE02huoa9TiVg74PvVm04ZCQB5OnGaQajTtD49gSWykcLd5GSZi3fG0YwXtJGSRpsxVEBEJfEae4mFPfIsKZnNi38IzjWAEo'};
      var data = json.encode({"shop_id": 1, "start_date": "2022-07-01", "end_date": "2022-11-02", "order_print": orderprint, "bill_status": 0, "status_id": 0});
      var dio = Dio();
      var response = await dio.request(
        'https://app-uat.iship.cloud/api/ishipstore-seller/orders/datas',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      print('response.statusCode = ${response.statusCode}');

      if (response.statusCode == 200) {
        var jsonen = json.encode(response.data);
        var jsonde = json.decode(jsonen);
        return OrderdataModel.fromJson(jsonde);
      } else {
        return OrderdataModel(status: false, code: 500, msg: '', data: null);
      }
    } catch (e) {
      return OrderdataModel(status: false, code: 500, msg: '', data: null);
    }
  }
}
