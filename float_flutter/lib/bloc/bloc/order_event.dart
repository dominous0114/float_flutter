part of 'order_bloc.dart';

sealed class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class OrderInitialEvent extends OrderEvent {}

class OrderCallLoadingEvent extends OrderEvent {}

class OrderChangePrintEvent extends OrderEvent {
  // final int orderPrint;
  // OrderChangePrintEvent({
  //   required this.orderPrint,
  // });
}
