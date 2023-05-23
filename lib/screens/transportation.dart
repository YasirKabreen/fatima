import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Transportation extends StatefulWidget {
  const Transportation({Key? key}) : super(key: key);

  @override
  State<Transportation> createState() => _TransportationState();
}

Map<String, String> transportationSentences = {
  'Car': 'He drove his car to work.',
  'Bicycle': 'She rode her bicycle to the park.',
  'Motorcycle': 'He zoomed past on his motorcycle.',
  'Bus': 'She took the bus to school.',
  'Train': 'He commuted to work by train.',
  'Subway': 'She navigated the city using the subway.',
  'Airplane': 'He flew to his vacation destination by airplane.',
  'Boat': 'She sailed across the lake in a boat.',
  'Ship': 'He went on a cruise ship for his vacation.',
  'Helicopter': 'She enjoyed a scenic helicopter ride.',
  'Taxi': 'He hailed a taxi to get to the airport.',
  'Truck': 'She drove a truck to transport goods.',
  'Scooter': 'He rode a scooter to run errands.',
  'Ferry': 'She crossed the river on a ferry.',
  'Tram': 'He took the tram to explore the city.',
  'RV': 'She traveled across the country in an RV.',
  'Blimp': 'He marveled at the sight of the giant blimp.',
  'Jet Ski': 'She had fun riding a jet ski on the water.',
  'Horse': 'He rode a horse through the countryside.',
  'Rickshaw': 'She hired a rickshaw to explore the bustling streets.',
};

List tim1 = transportationSentences.keys.toList();
List tim2 = transportationSentences.values.toList();

class _TransportationState extends State<Transportation> {
  String arabic = '';
  GoogleTranslator trans = GoogleTranslator();

  trasnlate(f) {
    trans.translate(f, to: 'ar').then((value) {
      arabic = value.text;
    });
    return Text(
      arabic,
      style: const TextStyle(fontSize: 30),
    );
  }

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
              'ransportation',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink,
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
                          SelectableText(
                            tim1[index],
                            style: const TextStyle(
                                fontSize: 30, color: Colors.deepOrangeAccent),
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
