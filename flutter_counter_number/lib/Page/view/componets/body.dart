import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/count.dart';

class DisplayCounter extends StatelessWidget {
  DisplayCounter({super.key});

  final CountNumber countNumber = Get.put(CountNumber());
  final CountNumber2 countNumber2 = Get.put(CountNumber2());

  @override
  Widget build(BuildContext context) {
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
              child: Obx(() {
                return Column(
                  children: [
                    Text(
                      countNumber.number.toString(),
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      countNumber2.number.toString(),
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    )
                  ],
                );
              }),
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
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.remove),
                          onPressed: () {
                            countNumber.decrease();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[100],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.refresh),
                          onPressed: () {
                            countNumber.reset();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[100],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.add),
                          onPressed: () {
                            countNumber.increment();
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
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.remove),
                          onPressed: () {
                            countNumber2.decrease();
                          },
                        ),
                        //Second button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[100],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.refresh),
                          onPressed: () {
                            countNumber2.reset();
                          },
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[100],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.add),
                          onPressed: () {
                            countNumber2.increment();
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
  }
}
