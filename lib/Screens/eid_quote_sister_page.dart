import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EidQuotesSister extends StatefulWidget {
  const EidQuotesSister({super.key});

  @override
  State<EidQuotesSister> createState() => _EidQuotesSisterState();
}

class _EidQuotesSisterState extends State<EidQuotesSister> {
  List quotes = [
    "Eid ul Adha Mubarak, dear sister! May your faith and devotion be rewarded on this special day",
    "Wishing my lovely sister a joyous Eid ul Adha filled with blessings and happiness",
    "To my amazing sister, may Allah's blessings be with you today and always. Eid ul Adha Mubarak!",
    "Eid ul Adha Mubarak to my wonderful sister! May this Eid bring peace and joy to your heart",
    "Dear sister, may the spirit of Eid ul Adha bring you closer to Allah and fill your life with joy",
    "On this holy day, I pray that Allah showers you with His blessings. Eid ul Adha Mubarak, sister!",
    "Eid ul Adha Mubarak to the best sister in the world! May your life be filled with happiness and love",
    "Wishing you a very happy Eid ul Adha, dear sister. May all your dreams come true",
    "Eid ul Adha Mubarak! May this Eid be a new beginning of greater prosperity, success, and happiness for you, sister",
    "To my dear sister, may Allah accept your sacrifices and bless you with His grace. Eid ul Adha Mubarak!"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Eid Quotes For Sisters',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent,
            child: GridView.builder(
                itemCount: quotes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.only(
                          left: 11, right: 11, top: 20, bottom: 20),
                      child: Card(
                        elevation: 20,
                        color: Colors.deepPurple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                quotes[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: quotes[index]));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Quote Copied to clipboard'),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                              ),
                              child: const Text(
                                'Copy Quote',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ));
                })),
      ),
    );
  }
}
