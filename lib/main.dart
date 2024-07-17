import 'package:flutter/material.dart';
import 'package:layout3/Form.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TUGAS'),
        ),
        body: Stack(
          children: [
            const Image(
              image: AssetImage('assets/aji1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(100),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'AJI FAHREZA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FormPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                    child: Text(
                      'Form',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(fontSize: 20),
                          ),
                          // ToggleSwitch(
                          //   initialLabelIndex: 0,
                          //   totalSwitches: 3,
                          //   labels: ['America', 'Canada', 'Mexico'],
                          //   onToggle: (index) {
                          //     print('switched to: $index');
                          //   },
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
