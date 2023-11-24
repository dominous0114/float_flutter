import 'package:float_flutter/bloc/bloc/order_bloc.dart';
import 'package:float_flutter/screen/cubit_widget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('อิอิ'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(
                  builder: (context) {
                    return CubitWidget();
                  },
                ));
              },
              icon: Icon(Icons.abc))
        ],
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state is OrderLoading) {
            return LinearProgressIndicator();
          } else if (state is OrderLoaded) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //context.read<OrderBloc>().add(OrderCallLoadingEvent());
                    context.read<OrderBloc>().add(OrderChangePrintEvent());
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
          } else if (state is OrderLoadError) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<OrderBloc>().add(OrderCallLoadingEvent());
          context.read<OrderBloc>().add(OrderInitialEvent());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
