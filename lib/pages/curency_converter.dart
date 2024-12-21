import 'package:flutter/material.dart';

class CurencyConverter extends StatefulWidget {
  const CurencyConverter({super.key});

  @override
  State<CurencyConverter> createState() => _CurencyConverterState();
}

class _CurencyConverterState extends State<CurencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  //1 create a varible that stores the converted currency value

  //2 Create a function that multiplies the value given by the textfield
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Naira ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            // this allows user to grab input
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the amount in USDT',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // button

            // we have two types of button in material Design
            // raised button
            //
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 86;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),

            // appears like raised
          ],
        ),
      ),
    );
  }
}
