import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Simple Calculator',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "Result: $result ",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
                decoration: InputDecoration(
                    labelText: 'Enter First Number',
                    icon: const Icon(Icons.list_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller2,
                decoration: InputDecoration(
                    labelText: 'Enter Second Number',
                    icon: const Icon(Icons.list_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        add();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: const Text('Add')),
                ],
              )
            ],
          ),
        ));
  }
}
