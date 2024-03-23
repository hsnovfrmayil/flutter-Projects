import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/examination_route.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.network(
          "https://img.kitapyurdu.com/v1/getImage/fn:9292217/wh:true/wi:500",
          fit: BoxFit.cover,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Imkansiz Kale",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 3),
            const Text(
              "Jason Rekulak, Boran Evren(Cevirme)",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4)),
              child: const Text(
                "Kitap",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            print("icom");
          },
          icon: const Icon(CupertinoIcons.arrow_up_left),
        ),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ExaminationRoutePage()));
        },
      ),
    );
  }
}
