part of 'order_bloc.dart';

class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object> get props => [];
}

class OrderLoading extends OrderState {}

class OrderLoaded extends OrderState {
  final OrderdataModel orderdataModel;
  final int print;
  @override
  List<Object> get props => [orderdataModel];

  OrderLoaded({
    required this.orderdataModel,
    required this.print,
  });

  OrderLoaded copyWith({
    OrderdataModel? orderdataModel,
    int? print,
  }) {
    return OrderLoaded(
      orderdataModel: orderdataModel ?? this.orderdataModel,
      print: print ?? this.print,
    );
  }
}

class OrderLoadError extends OrderState {
  final String error;
  OrderLoadError({
    required this.error,
  });
}
