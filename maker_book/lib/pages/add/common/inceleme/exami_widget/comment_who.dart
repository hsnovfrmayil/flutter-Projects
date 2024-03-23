import 'package:flutter/material.dart';

class CommentWhoExam extends StatelessWidget {
  const CommentWhoExam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("gesture dedector yorum");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Kimler yorum yapabilir?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.2, color: Colors.grey)),
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                "Butun okurkar",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
