import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

Map<String, String> foodSentences = {
  'Apple': 'An apple a day keeps the doctor away.',
  'Banana': 'I enjoy eating bananas.',
  'Pizza': 'Pizza is my favorite food.',
  'Pasta': 'I love a good plate of pasta.',
  'Burger': 'I had a delicious burger for lunch.',
  'Ice Cream': 'I scream for ice cream!',
  'Chocolate': 'I have a weakness for chocolate.',
  'Salad': 'I try to eat a salad every day.',
  'Sushi': 'Sushi is a delicacy from Japan.',
  'Steak': 'I like my steak cooked medium rare.',
  'Chicken': 'Grilled chicken is a healthy choice.',
  'Soup': 'A warm bowl of soup is comforting.',
  'Sandwich': 'I made a tasty sandwich for lunch.',
  'Fish': 'Fresh fish is a culinary delight.',
  'Fries': 'I love crispy French fries.',
  'Cake': 'Let them eat cake!',
  'Coffee': 'I need my morning cup of coffee.',
  'Tea': 'A cup of tea can be very soothing.',
  'Smoothie': 'I enjoy a refreshing fruit smoothie.',
  'Bread': 'Freshly baked bread smells amazing.',
  'Cheese': 'I could eat cheese all day.',
};

List tim1 = foodSentences.keys.toList();
List tim2 = foodSentences.values.toList();

class _FoodState extends State<Food> {
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
              'F',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ood',
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
