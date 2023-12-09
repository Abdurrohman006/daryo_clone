import 'package:daryo_clone/models/article.dart';
import 'package:flutter/material.dart';

class ItemForm extends StatelessWidget {
  final Articles news;
  const ItemForm(this.news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Business",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    "${news.publishedAt ?? " "} |",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  // Text(news.watchCount)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                news.urlToImage ??
                    "https://static.vecteezy.com/system/resources/thumbnails/004/216/831/original/3d-world-news-background-loop-free-video.jpg",
                width: 150,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Text(
                  news.title ?? "---",
                  style:
                      const TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
