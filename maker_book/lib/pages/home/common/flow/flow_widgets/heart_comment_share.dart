import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeartCommentShare extends StatelessWidget {
  const HeartCommentShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("312"),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.repeat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("312"),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.chat_bubble,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text("312"),
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
          child: const Icon(
            CupertinoIcons.bookmark,
            size: 20,
          ),
        ),
      ],
    );
  }
}
