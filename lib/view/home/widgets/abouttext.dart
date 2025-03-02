import 'package:flutter/material.dart';

class Abouttext extends StatefulWidget {
  const Abouttext({super.key});

  @override
  State<Abouttext> createState() => _AbouttextState();
}

bool isExpanded = false;

class _AbouttextState extends State<Abouttext> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10), // Adds spacing between text and icon
              Icon(
                Icons.menu_book, // Notebook icon
                color: Color.fromARGB(255, 255, 239, 13),
                size: 26,
              ),
            ],
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded
                  ? "I'm a final-year MCA student passionate about Flutter development, focusing on building visually engaging and user-friendly mobile applications. I have hands-on experience with Flutter’s core features, including UI design, Firebase integration, and API handling. Committed to writing clean, efficient code, I continuously refine my skills to stay updated with best practices. I’m eager to join a team where I can contribute, grow, and collaborate on impactful projects. 🚀"
                  : "I'm a final-year MCA student passionate about Flutter development, focusing on building visually engaging and user-friendly mobile applications... 🚀",
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? "Show Less" : "Read More",
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
