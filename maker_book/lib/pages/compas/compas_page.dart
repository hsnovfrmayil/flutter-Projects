import 'package:flutter/material.dart';
import 'package:maker_book/pages/compas/compas_common/discover/discover_compas.dart';
import 'package:maker_book/pages/compas/compas_common/read_follow/read_follow_compas.dart';
import 'package:maker_book/pages/compas/compas_common/subject/subject_compas.dart';
import 'package:maker_book/pages/compas/compas_common/what_read/what_read_compas.dart';

import 'compas_widget/text_filed_compas_widget.dart';

class CompasPage extends StatelessWidget {
  const CompasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Kesfet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Konular',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Ne Okusam?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Okur Takip Onerileri',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          title: const TextFieldCompasWidget(),
        ),
        body: TabBarView(
          children: [
            DiscoverCompas(),
            SubjectCompas(),
            WhatReadCompas(),
            ReadFollowCompas(),
          ],
        ),
      ),
    );
  }
}
