import 'package:flutter/material.dart';

class TitleSubjectExam extends StatelessWidget {
  TitleSubjectExam(
      {super.key,
      required this.answer,
      required this.title,
      required this.hintText});
  bool answer;
  String title;
  String hintText;

  @override
  Widget build(BuildContext context) {
    int? maxLength = answer ? 85 : null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          Container(
            child: TextField(
              maxLength: maxLength,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: 18),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1, color: Colors.black)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
