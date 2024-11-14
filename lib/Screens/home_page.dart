import 'package:app1/Screens/eid_quote_brother_page.dart';
import 'package:app1/Screens/eid_quote_parent_page.dart';
import 'package:app1/Screens/eid_quote_sister_page.dart';
import 'package:app1/Screens/eid_quote_special_page.dart';
import 'package:app1/Screens/eid_quote_teacher_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _nameController = TextEditingController();

  void _searchQuote(String name) {
    String trimmedName = name.toLowerCase().trim();
    Widget page;

    switch (trimmedName) {
      case 'parents':
      case 'parent':
        page = const EidQuotesParent();
        break;
      case 'brothers':
      case 'brother':
        page = const EidQuotesBrother();
        break;
      case 'sisters':
      case 'sister':
        page = const EidQuotesSister();
        break;
      case 'teachers':
      case 'teacher':
        page = const EidQuotesTeacher();
        break;
      case 'special':
      case 'special person':
        page = const EidQuotesSpecial();
        break;
      default:
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No Result Found!'),
          ),
        );
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
    _nameController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Eid Ul-Adha Mubarak!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.jpg'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle)),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Find The Perfect Eid Quotes For Your Loved Ones!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12, top: 22),
                child: TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    hintText: "Enter 'Parent', 'Brother', etc.",
                    hintStyle: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    suffixIcon: SizedBox(
                      width: 60,
                      child: IconButton(
                          icon: const Icon(Icons.search),
                          color: Colors.white,
                          iconSize: 35,
                          onPressed: () {
                            _searchQuote(_nameController.text);
                          }),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.7), width: 3),
                        borderRadius: BorderRadius.circular(18)),
                    fillColor: Colors.lightBlueAccent.withOpacity(0.5),
                    filled: true,
                  ),
                  onFieldSubmitted: _searchQuote,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
