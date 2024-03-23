import 'package:flutter/material.dart';

class SharePostText extends StatelessWidget {
  const SharePostText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            "Main Title",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.green[200],
          child: const Column(
            children: [
              Text(
                "Cep telefonlarının gelişmesiyle beraber işleri daha da kolaylaştırmak adına bazı özellikler eklenmiştir. Bu özelliklerden birisi de Widgetlardır. ",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Sayfa 43 - Metis Yayinlari",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
