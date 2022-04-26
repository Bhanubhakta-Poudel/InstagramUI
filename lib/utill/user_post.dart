import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Text(
                    "Sandeep Poudel",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 250,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(Icons.favorite),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.bookmark),
              ),
            ],
          ),
          Row(
            children: const [
              Text("Liked by "),
              Text(
                "sandeep Poudel ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "and ",
              ),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: "It's ME Handsome hello hi bye bye bye ok ok ok ok ",
            ),
          ]))
        ],
      ),
    );
  }
}
