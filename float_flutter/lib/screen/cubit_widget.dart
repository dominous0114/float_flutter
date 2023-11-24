import 'package:float_flutter/bloc/bloc/order_bloc.dart';
import 'package:float_flutter/bloc/cubit/order_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWidget extends StatefulWidget {
  const CubitWidget({super.key});

  @override
  State<CubitWidget> createState() => _CubitWidgetState();
}

class _CubitWidgetState extends State<CubitWidget> {
  void oncall() {
    context.read<OrderCubitCubit>().onGetOrder(1, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                oncall();
              },
              icon: Icon(Icons.phishing)),
          IconButton(
              onPressed: () {
                context.read<OrderBloc>().add(OrderInitialEvent());
              },
              icon: Icon(Icons.abc)),
        ],
      ),
      body: BlocBuilder<OrderCubitCubit, OrderCubitState>(
        builder: (context, state) {
          if (state is OrderCubitLoading) {
            return LinearProgressIndicator();
          } else if (state is OrderCubitLoaded) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //context.read<OrderBloc>().add(OrderCallLoadingEvent());
                    //context.read<OrderBloc>().add(OrderChangePrintEvent());
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('print ${state.print}'),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: state.orderdataModel.data!.orders.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(
                        '${state.orderdataModel.data!.orders[index].name}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    );
                  },
                ),
              ],
            );
          } else if (state is OrderCubitLoadError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('error'),
                  Text(
                    '',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('more error'),
                  Text(
                    '',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
