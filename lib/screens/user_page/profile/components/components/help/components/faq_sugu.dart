import 'package:flutter/material.dart';


class FAQSugu extends StatelessWidget {
  static String routeName = 'faq_sugu';
  const FAQSugu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ Sugu"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cette FAQ apporte des réponses aux questions basiques à propos de Sugu", style: TextStyle(fontSize: 18),),
              Text("Général", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              // listes des questions
            ],
          ),
        ),
      ),
    );
  }
}
