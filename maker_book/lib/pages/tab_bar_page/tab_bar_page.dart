import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maker_book/pages/add/add_page.dart';
import 'package:maker_book/pages/compas/compas_page.dart';
import 'package:maker_book/pages/home/home_page.dart';
import 'package:maker_book/pages/message/message_page.dart';
import 'package:maker_book/pages/profile/profile_page.dart';
import 'package:maker_book/pages/tab_bar_page/widgets/bottom_navigaton_bar.dart';
import 'package:maker_book/provider/constants/bottom_select_index.dart';

class TabBarPage extends ConsumerWidget {
  TabBarPage({super.key});
  List pageList = const [
    HomePage(),
    CompasPage(),
    AddPage(),
    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pageList[ref.watch(selectIndex)],
      bottomNavigationBar: const TabBottomNavigationBar(),
    );
  }
}
