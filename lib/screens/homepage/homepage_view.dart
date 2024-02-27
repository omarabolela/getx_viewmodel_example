import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_viewmodel_example/screens/homepage/homepage_viewmodel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
        init: CounterController(),
        builder: (viewmodel) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter App'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Counter: ${viewmodel.counter}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: viewmodel.decrement,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () => viewmodel.increment(),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
