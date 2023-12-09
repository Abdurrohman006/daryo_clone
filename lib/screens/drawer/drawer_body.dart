import 'package:flutter/material.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          category("So'ngi yangiliklar"),
          category("Mahalliy"),
          category("Dunyo"),
          category("Texnalogiyalar"),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: category("Tanlangan xabarlar", Colors.lightGreen),
          ),
          const Divider(thickness: 1),
          category("Madaniyat"),
          category("Avto"),
          category("Sport"),
          category("Foto"),
          category("Lifestyle"),
          category("Kolumnistlar"),
          category("Afisha"),
        ],
      ),
    );
  }

  Widget category(String title, [Color givenColor = Colors.black]) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(left: 18),
      child: Text(
        title,
        style: TextStyle(
            color: givenColor, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
