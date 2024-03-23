import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/comment_who.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/exam_button.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/subject_check.dart';
import 'package:maker_book/pages/add/common/inceleme/exami_widget/title_subject.dart';

class ExaminationRoutePage extends StatelessWidget {
  const ExaminationRoutePage({super.key});

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
            CupertinoIcons.arrow_left,
            color: Colors.black,
          ),
        ),
        title: ListTile(
          leading: Image.network(
            "https://img.kitapyurdu.com/v1/getImage/fn:9292217/wh:true/wi:500",
            height: 40,
            width: 35,
            fit: BoxFit.cover,
          ),
          title: const Text(
            "Incelemeniz",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Imkansiz Kale",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Kitabi begendiniz mi? Diger okurlara tavsiye eder misiniz?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2, color: Colors.black)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      ExamGestureDedector(text: "okur"),
                      const SizedBox(width: 25),
                      ExamGestureDedector(text: "kitap"),
                      const SizedBox(width: 25),
                      ExamGestureDedector(text: "yazar"),
                    ],
                  ),
                ),
              ),
              SubjectCheckExam(),
              TitleSubjectExam(
                answer: true,
                title: "Baslik",
                hintText: "",
              ),
              const CommentWhoExam(),
              ExamButton(text: "Incelemeyi Kaydet"),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: const Text(
                  "Merhaba sevgili okur.\nİncelemeler kitap hakkındaki yorumunuzdur.\nBir kitabı okuduklarınıza eklemeniz için inceleme eklemeniz zorunlu değildir.\n Kitaptan alıntı paylaşmak için alıntılarbölümünü kullanmalısınız.\n İncelemeniz en az 150 karakterden oluşmalıdır.\n İncelemeniz içerisinde kitabı okumayan insanların kitaptan alabileceği tadı azaltma ihtimali olan cümleler varsa (spoiler) buna dair bir uyarıyı başa koymalısınız.\n İncelemeniz size ait özgün cümlelerinizden oluşmalıdır.\nBu açıklama ekleyeceğiniz 5. incelemeden sonra uzay boşluğuna uçacaktır.\n İyi okumalar dileriz. :)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class ExamGestureDedector extends StatelessWidget {
  ExamGestureDedector({
    super.key,
    required this.text,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.add,
            size: 22,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
