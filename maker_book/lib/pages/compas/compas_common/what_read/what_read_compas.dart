import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/compas/compas_common/what_read/whread_widget/book_container.dart';

class WhatReadCompas extends StatelessWidget {
  const WhatReadCompas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const BookContainer();
        },
        itemCount: 20,
      ),
    );
  }
}
