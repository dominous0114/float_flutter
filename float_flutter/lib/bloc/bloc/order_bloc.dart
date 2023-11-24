import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:float_flutter/models/orderdataModl.dart';
import 'package:float_flutter/repository/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderLoading()) {
    on<OrderInitialEvent>(onGetOrder);
    on<OrderCallLoadingEvent>(onCallLoading);
    on<OrderChangePrintEvent>(onSendPrint);
    //on<OnreloadEvent>(onGetOrder);
  }

  void onGetOrder(OrderInitialEvent event, Emitter<OrderState> emit) async {
    try {
      final orderData = await OrderRepository().getOrder(orderprint: 0);

      emit(OrderLoaded(orderdataModel: orderData, print: 0));
    } catch (e) {
      emit(OrderLoadError(error: 'error'));
    }
  }

  void onCallLoading(OrderCallLoadingEvent event, Emitter<OrderState> emit) {
    emit(OrderLoading());
  }

  void onSendPrint(OrderChangePrintEvent event, Emitter<OrderState> emit) async {
    var state = this.state;
    if (state is OrderLoaded) {
      emit(OrderLoading());
      try {
        int printtext = state.print;
        printtext = printtext + 1;
        final orderData = await OrderRepository().getOrder(orderprint: printtext);

        emit(OrderLoaded(orderdataModel: orderData, print: printtext));

        //emit(state.copyWith(print: event.orderPrint));
      } catch (e) {
        emit(OrderLoadError(error: 'error'));
      }
    }
  }

  //void onReload(OnreloadEvent event, Emitter<OrderState> emit) {}
}
