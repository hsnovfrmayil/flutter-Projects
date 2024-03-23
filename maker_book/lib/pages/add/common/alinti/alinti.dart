import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/add/common/alinti/common/quo_route_page.dart';
import 'package:maker_book/pages/add/common/alinti/quotatio_widget/search_book.dart';

import '../../../compas/compas_widget/text_filed_compas_widget.dart';
import '../inceleme/exami_widget/search_book.dart';

class QuotationAddPage extends StatelessWidget {
  const QuotationAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Inceleme Paylas",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFieldCompasWidget(),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < 16; i++) QuotatioSearchBook(),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
