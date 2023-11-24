import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:float_flutter/bloc/bloc/order_bloc.dart';
import 'package:float_flutter/models/orderdataModl.dart';
import 'package:float_flutter/repository/order_repository.dart';
import 'package:flutter/material.dart';

part 'order_cubit_state.dart';

class OrderCubitCubit extends Cubit<OrderCubitState> {
  OrderCubitCubit() : super(OrderCubitLoading());

  void onGetOrder(int a, BuildContext context) async {
    try {
      print('on cubit');
      final orderData = await OrderRepository().getOrder(orderprint: 0);

      emit(OrderCubitLoaded(orderdataModel: orderData, print: 0));
    } catch (e) {
      emit(OrderCubitLoadError(error: 'error'));
    }
  }

  void ontest() {}
}
