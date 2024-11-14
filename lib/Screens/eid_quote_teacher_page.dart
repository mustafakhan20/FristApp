import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EidQuotesTeacher extends StatefulWidget {
  const EidQuotesTeacher({super.key});

  @override
  State<EidQuotesTeacher> createState() => _EidQuotesTeacherState();
}

class _EidQuotesTeacherState extends State<EidQuotesTeacher> {
  List quotes = [
    "Eid ul Adha Mubarak to a wonderful teacher! May this Eid bring you joy, peace, and prosperity",
    "Wishing my respected teacher a very happy and blessed Eid ul Adha. Your guidance and support mean the world to me",
    "Eid ul Adha Mubarak! May Allah reward you for your dedication and hard work as a teacher",
    "To my inspiring teacher, Eid ul Adha Mubarak! May this special day fill your life with happiness and success",
    "Eid ul Adha Mubarak to the best teacher! Your wisdom and kindness are deeply appreciated",
    "Dear teacher, may this Eid ul Adha bring you and your family endless blessings. Eid Mubarak!",
    "Wishing you a joyous Eid ul Adha, dear teacher. Thank you for being a beacon of knowledge and inspiration",
    "Eid ul Adha Mubarak! May Allah bless you with good health, happiness, and continued success in your teaching career",
    "To my wonderful teacher, may this Eid ul Adha be as special as you are. Wishing you all the best!",
    "Eid ul Adha Mubarak to a phenomenal teacher! Your guidance has made a lasting impact on my life"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Eid Quotes For Teachers',
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
