import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EidQuotesBrother extends StatefulWidget {
  const EidQuotesBrother({super.key});

  @override
  State<EidQuotesBrother> createState() => _EidQuotesBrotherState();
}

class _EidQuotesBrotherState extends State<EidQuotesBrother> {
  List quotes = [
    "Eid Ul-Adha Mubarak, dear brother! May Allah bless you with happiness, success, and good health always",
    "Wishing my amazing brother a joyous and blessed Eid. May this special day bring peace and joy to your heart",
    "Eid Ul-Adha Mubarak to my wonderful brother! May your Eid be filled with moments of love and laughter",
    "To my brother, who is my strength and support, Eid Ul-Adha Mubarak! May you be blessed with endless happiness",
    "Eid Ul-Adha Mubarak, brother! Your presence makes every Eid more special. Here's to many more joyous Eids together",
    "May the blessings of Allah fill your life with happiness and open all the doors of success now and always. Eid Ul-Adha Mubarak, dear brother!",
    "Eid Ul-Adha Mubarak to the best brother in the world! May Allah grant you peace, happiness, and prosperity on this special day",
    "On this joyous occasion of Eid, I wish you all the success and happiness you deserve. Eid Ul-Adha Mubarak, brother!",
    "Eid Ul-Adha Mubarak, brother! May the divine blessings of Allah bring you hope, faith, and joy on this special day and forever",
    "Sending you my heartfelt wishes on this blessed occasion. May Allah fill your life with joy and prosperity. Eid Ul-Adha Mubarak, dear brother!"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Eid Quotes For Brothers',
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
