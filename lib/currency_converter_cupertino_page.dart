import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 2500;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Converter'),
        backgroundColor: CupertinoColors.black,
      ),
      child: Center(
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
              CupertinoTextField(
                placeholder: 'Please enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.white,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: convert,
                child: const Text(
                  'Convert',
                  style: TextStyle(color: CupertinoColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// }
