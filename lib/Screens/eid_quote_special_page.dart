import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EidQuotesSpecial extends StatefulWidget {
  const EidQuotesSpecial({super.key});

  @override
  State<EidQuotesSpecial> createState() => _EidQuotesSpecialState();
}

class _EidQuotesSpecialState extends State<EidQuotesSpecial> {
  List quotes = [
    "Eid ul Adha Mubarak to the most special person in my life. May this Eid bring you endless joy and happiness",
    "Wishing you a blessed Eid ul Adha filled with love, peace, and everything that makes you smile. You're truly special",
    "Eid ul Adha Mubarak! May Allah bless you with all the success and happiness you deserve, my dear",
    "To the one who means the world to me, Eid ul Adha Mubarak! May our bond grow stronger with each passing day",
    "Eid ul Adha Mubarak to someone incredibly special. May your life be filled with love, prosperity, and joy",
    "On this blessed Eid ul Adha, I pray that Allah's blessings light up your path and lead you to happiness. You are truly special to me",
    "Eid ul Adha Mubarak to the person who holds a special place in my heart. Wishing you a day full of love and blessings",
    "To my special someone, Eid ul Adha Mubarak! May your heart be filled with happiness and your life with prosperity",
    "Eid ul Adha Mubarak to the one who makes my life beautiful. May this Eid be as wonderful as you are",
    "Wishing my special person a joyous Eid ul Adha. Your presence in my life is a blessing that I cherish every day"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Eid Quotes For Special Person',
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
