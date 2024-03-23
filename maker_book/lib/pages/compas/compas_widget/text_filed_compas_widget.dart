import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldCompasWidget extends StatelessWidget {
  const TextFieldCompasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: const Row(
        children: [
          Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "1000Kitap'ta Ara",
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            CupertinoIcons.barcode_viewfinder,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
