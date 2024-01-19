import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/count.dart';

class DisplayCounter extends StatelessWidget {
  const DisplayCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CountCotroller>(
        init: CountCotroller(),
        dispose: (state) {
          state.controller?.number;
          state.controller?.number2;
        },
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "GetX Demo",
              ),
            ),
            body: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          controller.number.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          controller.number2.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //first counter button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  controller.decrease();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.refresh),
                                onPressed: () {
                                  controller.reset();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  controller.increment();
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          //Secound counter button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  controller.decrease2();
                                },
                              ),
                              //Second button
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.refresh),
                                onPressed: () {
                                  controller.reset2();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[100],
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                  ),
                                ),
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  controller.increment2();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
