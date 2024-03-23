import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookContainer extends StatelessWidget {
  const BookContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.network(
                "https://kitabevim.az/wp-content/uploads/2022/03/photo_2022-03-04_06-22-43.jpg",
                width: 80,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "1.Hayvan Ciftligi",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/4/44/George_Orwell%2C_c._1940_%2841928180381%29_%28cropped%29.jpg",
                      width: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "George Orwell",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.ellipsis),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "8.1/10 ",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "13bin okuma",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    child: const Row(
                      children: [
                        Icon(
                          CupertinoIcons.add,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Okuyacaklarima Ekle",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          CupertinoIcons.arrowtriangle_down_fill,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
