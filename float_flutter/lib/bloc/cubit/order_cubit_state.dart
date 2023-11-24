part of 'order_cubit_cubit.dart';

sealed class OrderCubitState extends Equatable {
  const OrderCubitState();

  @override
  List<Object> get props => [];
}

class OrderCubitLoading extends OrderCubitState {}

class OrderCubitLoaded extends OrderCubitState {
  final OrderdataModel orderdataModel;
  final int print;
  @override
  List<Object> get props => [orderdataModel];

  OrderCubitLoaded({
    required this.orderdataModel,
    required this.print,
  });

  OrderCubitLoaded copyWith({
    OrderdataModel? orderdataModel,
    int? print,
  }) {
    return OrderCubitLoaded(
      orderdataModel: orderdataModel ?? this.orderdataModel,
      print: print ?? this.print,
    );
  }
}

class OrderCubitLoadError extends OrderCubitState {
  final String error;
  OrderCubitLoadError({
    required this.error,
  });
}
