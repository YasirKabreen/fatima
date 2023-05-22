import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

class Clothing extends StatefulWidget {
  const Clothing({Key? key}) : super(key: key);

  @override
  State<Clothing> createState() => _ClothingState();
}

Map<String, String> clothingSentences = {
  'Shirt': 'He wore a clean, ironed shirt.',
  'Pants': 'She put on a pair of comfortable pants.',
  'Dress': 'The bride looked stunning in her wedding dress.',
  'Skirt': 'She twirled around in her flowing skirt.',
  'Jacket': 'He zipped up his warm jacket to brave the cold.',
  'Sweater': 'She snuggled up in a cozy sweater.',
  'Coat': 'He hung his coat on the hook by the door.',
  'Hat': 'She wore a stylish hat to shield herself from the sun.',
  'Gloves': 'He put on a pair of gloves to keep his hands warm.',
  'Socks': 'She wore colorful socks that peeked out from her shoes.',
  'Shoes': 'He laced up his running shoes for a jog.',
  'Boots': 'She stomped her feet in her sturdy boots.',
  'Scarf': 'He wrapped a soft scarf around his neck.',
  'Tie': 'He adjusted his tie in front of the mirror.',
  'Belt': 'She tightened her belt to keep her pants in place.',
  'Jewelry': 'She adorned herself with sparkling jewelry.',
  'Pajamas': 'He changed into his comfy pajamas for bedtime.',
  'Swimsuit': 'She put on her swimsuit to go for a swim.',
  'Sunglasses': 'He wore stylish sunglasses to protect his eyes.',
  'Cap': 'She wore a baseball cap to shield her face from the sun.',
};

List tim1 = clothingSentences.keys.toList();
List tim2 = clothingSentences.values.toList();

class _ClothingState extends State<Clothing> {
  String arabic = '';
  GoogleTranslator trans = GoogleTranslator();

  trasnlate(f) {
    trans.translate(f, to: 'ar').then((value) {
      arabic = value.text;
    });
    return Text(
      arabic,
      style: TextStyle(fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              'C',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'lothing',
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
                          Text(
                            tim1[index],
                            style: TextStyle(
                                fontSize: 30, color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        tim2[index],
                        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
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
