import 'dart:convert';

import 'package:daryo_clone/models/article.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'item_form.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  List<Articles> articles = [];

  void fetchData() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=73fc718f454843fb8188b86daac3fbb8';

    try {
      //// api ni url orqali ma'lumotlarini responsga saqlandi
      final response = await http.get(Uri.parse(url));
      //// ma'lumoti body qismini Map ko'rinishda olindi
      final Map<String, dynamic> body = jsonDecode(response.body);
      //// api mal'umotlani modelga moslavolindi
      final Article article = Article.fromJson(body);
      setState(() {
        articles = article.articles!;
      });
      // print(response.body);
    } catch (xato) {
      print("Xato chiqdi:" + xato.toString());
    }
  }

  @override
  initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemForm(articles[index]);
        },
      ),
    );
  }
}
