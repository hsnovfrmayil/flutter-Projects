import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubjectCheckExam extends StatelessWidget {
  SubjectCheckExam({super.key});
  List subjectLists = [
    "Insan ve Duygular",
    "Insan ve Hayat",
    "Siir",
    "Dusunce",
    "Duygular",
    "Edebiyyat",
    "1000Kitap",
    "Alinti",
    "1000k",
    "2023 Okuma Raporlari",
    "Din",
    "1 K",
    "Kitap Alintisi",
    "Psikoloji",
    "Muzik",
    "Edebiyyat & Roman",
    "Felsefe-Dusunce",
    "Hayata Dair",
    "Ask",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height / 1.3,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(CupertinoIcons.clear_thick),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              "Konu Secimi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ],
                        )),
                    Container(
                      height: 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.1, color: Colors.black)),
                      child: const Text("1"),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ExamTextFieldSearch(),
                          const SizedBox(height: 35),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Oneriler",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          const SizedBox(height: 35),
                          for (int i = 0; i < subjectLists.length; i++)
                            ListTileElement(
                              title: subjectLists[i],
                            ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ))
                  ],
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "#Konu",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2, color: Colors.grey)),
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: const Row(
                  children: [
                    Text(
                      "Konu Secimi",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                    ),
                    Icon(CupertinoIcons.arrowtriangle_down_fill)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class ExamTextFieldSearch extends StatelessWidget {
  const ExamTextFieldSearch({
    super.key,
  });

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
                hintText: "Konullarda ara",
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class ListTileElement extends StatelessWidget {
  ListTileElement({
    super.key,
    required this.title,
  });
  String title;
  // String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          const SizedBox(height: 5),
        ],
      ),
      subtitle: const Text(
        "Son Kullandiklarinizdan",
        style: TextStyle(fontSize: 17),
      ),
      onTap: () {},
    );
  }
}
