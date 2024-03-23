import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/comment_who.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/exam_button.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/subject_check.dart';

import '../../inceleme/exami_widget/title_subject.dart';

class QuoRoutePage extends StatelessWidget {
  const QuoRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.clear_thick,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Alinti Ekle",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SubjectCheckExam(),
              TitleSubjectExam(
                answer: true,
                title: "Baslik",
                hintText: "",
              ),
              TitleSubjectExam(
                answer: false,
                title: "Alinti",
                hintText: "Kitapdan cumleler",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TitleSubjectExam(
                  answer: false,
                  title: "Sayfa",
                  hintText: "Alinti kacinci sayfada?",
                ),
              ),
              TitleSubjectExam(
                answer: false,
                title: "Ek bilgi",
                hintText: "Yaynevi, karakter adi vs.",
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CommentWhoExam()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: Text("TASLAK"))),
                    const SizedBox(width: 20),
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Colors.black),
                            onPressed: () {},
                            child: Text("PAYLAS"))),
                    const SizedBox(
                      width: 10,
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
