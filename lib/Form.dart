import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: Stack(
          children: [
            const Image(
              image: AssetImage('assets/aji1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(100),
              child: Column(
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'Masukkan Nama',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  )),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ));
  }
}
