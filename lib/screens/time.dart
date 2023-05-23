import 'package:flutter/material.dart';

import 'package:translator/translator.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

Map<String, String> timeSentences = {
  'Time': 'Time flies.',
  'Second': 'Just a second.',
  'Minute': 'In a minute.',
  'Hour': "It's been hours.",
  'Day': 'Have a good day.',
  'Week': 'See you next week.',
  'Month': 'The month went by quickly.',
  'Year': 'Happy New Year!',
  'Morning': 'Good morning, sunshine!',
  'Afternoon': "Let's meet in the afternoon.",
  'Evening': "It's evening already.",
  'Night': 'Time to sleep at night.',
  'Yesterday': 'Yesterday was fun.',
  'Today': 'Today is a special day.',
  'Tomorrow': 'Tomorrow will be better.',
  'Past': "It's in the past now.",
  'Present': 'Living in the present.',
  'Future': 'Excited for the future.',
  'Clock': 'Check the time on the clock.',
  'Calendar': 'Mark the date on the calendar.',
};

List tim1 = timeSentences.keys.toList();
List tim2 = timeSentences.values.toList();
TextEditingController cnt = TextEditingController();

class _TimeState extends State<Time> {
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

  // @override
  // void dispose() {
  //   cnt.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'T',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ime',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink,
      // bottomSheet: Container(
      //   height: 500,
      //   width: 400,
      //   decoration: BoxDecoration(
      //       color: Colors.blue, borderRadius: BorderRadius.circular(50)),
      // ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            context: context,
            builder: (context) {
              return Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey)),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.blueGrey),
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
                        padding: EdgeInsets.all(20),
                        child: Text(arabic,
                            style: const TextStyle(
                                fontSize: 40, color: Colors.deepOrange)),
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
            },
          );
        },
        child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(50)),
            child: Icon(
              Icons.translate,
              color: Colors.amber,
              size: 30,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FittedBox(
                            child: SelectableText(
                              tim1[index],
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.deepOrangeAccent),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        child: SelectableText(
                          tim2[index],
                          style: const TextStyle(
                              fontSize: 18, color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
