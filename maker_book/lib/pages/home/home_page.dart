import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/home/common/draw/draw_home_common.dart';
import 'package:maker_book/pages/home/common/flow/flow_home_common.dart';
import 'package:maker_book/pages/home/common/follow/follow_home_common.dart';
import 'package:maker_book/pages/home/common/popular/popular_home_common.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(
                  CupertinoIcons.line_horizontal_3,
                  color: Colors.black,
                ),
              ),
              Tab(
                  child: Text(
                "Akis",
                style: TextStyle(color: Colors.black, fontSize: 19),
              )),
              Tab(
                  child: Text(
                "Takipler",
                style: TextStyle(color: Colors.black, fontSize: 19),
              )),
              Tab(
                  child: Text(
                "Populer",
                style: TextStyle(color: Colors.black, fontSize: 19),
              )),
            ],
          ),
          actions: const [
            Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            DrawHomeCommon(),
            FlowHomeCommon(),
            FollowHomeCommon(),
            PopularHomeCommon(),
          ],
        ),
      ),
    );
  }
}
