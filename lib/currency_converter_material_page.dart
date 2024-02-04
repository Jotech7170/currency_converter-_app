import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<StatefulWidget> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 2500;
    });
  }

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Currency Converter'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TZS ${result.toString()}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on,
                  ),
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
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: convert,
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({super.key});
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     final border = OutlineInputBorder(
//       borderSide: const BorderSide(
//         width: 2.0,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     );
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         title: const Text('Currency Converter'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'Please enter amount in USD',
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: const Icon(
//                     Icons.monetization_on,
//                   ),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextButton(
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 55),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                 ),
//                 onPressed: () {
//                   // if (kDebugMode) {
//                   //   print('button clicked');
//                   // }
//                   // print(textEditingController.text);
//                   result = double.parse(textEditingController.text) * 81;
//                 },
//                 child: const Text('Convert'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
