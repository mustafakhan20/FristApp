import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EidQuotesParent extends StatefulWidget {
  const EidQuotesParent({super.key});

  @override
  State<EidQuotesParent> createState() => _EidQuotesParentState();
}

class _EidQuotesParentState extends State<EidQuotesParent> {
  List quotes = [
    'I want to thank my dear parents for all their sacrifices and I pray to Allah to bless them with best of health and happiness in this world… Eid Ul-Adha Mubarak to you mom, dad',
    'Sending you warm wishes on Eid and wishing that it brings joy and happiness your way. Remember me in your prayers',
    'Every Eid with you is like a blessing from Allah. Thanks for being with me there always. Happy Eid Ul-Adha Mubarak',
    'On the occasion of Eid, I wish that you two take a break from all the worldly tensions and just enjoy the festivities with happiness and joy, Eid Ul-Adha Mubarak mom, dad',
    'Without you two, my life is incomplete…. I pray to Allah to always keep you both joyous and blessed…. Wishing a very Happy Eid Ul-Adha to my mom and dad',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Eid Quotes For Parents',
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
