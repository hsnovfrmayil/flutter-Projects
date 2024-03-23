import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maker_book/pages/add/common/okuma_hedefi.dart';
import 'package:maker_book/pages/add/common/okuma_kaydi.dart';

import '../../../provider/constants/bottom_select_index.dart';
import '../../add/common/alinti/alinti.dart';
import '../../add/common/ileti.dart';
import '../../add/common/inceleme/inceleme.dart';

class TabBottomNavigationBar extends ConsumerWidget {
  const TabBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: ref.watch(selectIndex),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[400],
      onTap: (value) {
        if (value != 2) {
          ref.read(selectIndex.notifier).update((state) => value);
        }
        if (value == 2) {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Yeni Gonderi Paylasin",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(CupertinoIcons.plus_bubble),
                        title: const Text(
                          'Inceleme Yaz',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ExaminationPage()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(CupertinoIcons.doc_append),
                        title: const Text(
                          'Alinti Paylas',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuotationAddPage()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(CupertinoIcons.captions_bubble),
                        title: const Text(
                          'Ileti Paylas',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommunucatAddPage()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(CupertinoIcons.book),
                        title: const Text(
                          'Okuma Kaydi',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ReadingRecordPage()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(CupertinoIcons.news),
                        title: const Text(
                          'Okuma Hedefi',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ReadingTargetPage()));
                        },
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                );
              });
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.compass), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add), label: ""),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bubble_left), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
      ],
    );
  }
}
