//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*backend
1. create a variable that store the converted currency chahiye
2. create a function that multiply the value given by the text in a doller rate
3. store the value in the varriable that be created 
4. display the variable
*/
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    
     
    
    final border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black,
      width: 5,
      style: BorderStyle.solid,
      strokeAlign: BorderSide.strokeAlignInside,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 20, 153),
        elevation: 0,
        title: Text('CURRENCY CONVERTER'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 176, 182, 180),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // int to string
            Text(
              'INR ${result.toStringAsFixed(2)}',
              style:const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            //padding
            //container
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter Amount in usd ',
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 13, 12, 10)),
                  suffix: const Icon(Icons.monetization_on),
                  suffixIconColor: const Color.fromARGB(235, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            //button'

            //raised
            //appers
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 86.03; 
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: (15),
                backgroundColor: (const Color.fromARGB(255, 5, 6, 9)),
                foregroundColor: (Colors.white), //button color
                fixedSize: (Size(double.infinity, 50)),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),)
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
