import 'package:flutter/material.dart';
import 'package:test_app/model/cardinfo.dart';
import 'package:test_app/widgets/card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<cardinfo> cardData = [
    const cardinfo(
        image: 'assets/plane.webp',
        message: 'Make Your booking\n with Flexify and enjoy',
        title: 'Tickets'),
    const cardinfo(
        image: 'assets/hotel.jpeg',
        message: 'The Ideal Hotel at a \nGreat Price',
        title: 'Hotels'),
    const cardinfo(
        image: 'assets/hill.jpeg',
        message: 'Find & book tours,\n adventures, activities',
        title: 'Adventure'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.avif"),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "Michael\n",
                        style: TextStyle(fontSize: 36, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Alexander",
                              style: TextStyle(fontWeight: FontWeight.w800))
                        ]),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/avatar.jpeg"),
                    radius: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                  "We focus a lot on helping the first time or inexperienced traveler head out",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: card(
                      cardData: cardData[index],
                    ),
                  ),
                  itemCount: cardData.length,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
