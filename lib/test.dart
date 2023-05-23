import 'package:flutter/material.dart';

import 'package:translator/translator.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

TextEditingController cnt = TextEditingController();

class _TestState extends State<Test> {
  String arabic = '';
  GoogleTranslator trans = GoogleTranslator();

  trasnlate(f) async {
    await trans.translate(f, to: 'ar').then((value) {
      setState(() {
        arabic = value.text;
      });
    });
    // return Text(
    //   arabic,
    //   style: const TextStyle(fontSize: 30),
    // );
  }

  @override
  void dispose() {
    cnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: cnt,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    label: Text('Enter your words here',
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  style: const TextStyle(fontSize: 30, color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(arabic,
                  style:
                      const TextStyle(fontSize: 40, color: Colors.deepOrange)),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  trasnlate(cnt.text);
                });
              },
              icon: const Icon(
                Icons.translate,
                color: Colors.amber,
                size: 30,
              ),
              label: const Text(
                'Translate',
                style: TextStyle(fontSize: 24),
              ))
        ],
      ),
    );
  }
}
