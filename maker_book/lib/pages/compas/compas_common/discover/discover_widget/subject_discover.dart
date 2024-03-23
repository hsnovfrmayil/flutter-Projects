import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../provider/constants/other_more_provider.dart';

class DiscoverSubject extends ConsumerWidget {
  DiscoverSubject({
    super.key,
    required this.func,
    required this.providerAnswer,
    required this.answerSubject,
    required this.url,
  });
  bool answerSubject;
  VoidCallback func;
  bool providerAnswer;
  String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Gündemdeki Konular",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Tümünü gör",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: !providerAnswer ? 5 : 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: answerSubject
                        ? ClipOval(
                            child: Image.network(
                              url,
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                          )
                        : null,
                    title: const Text("Siir"),
                    subtitle: const Text("816 gonderi"),
                  ),
                ),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Tumunu gor",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () => func(),
              child: Row(
                children: [
                  !providerAnswer
                      ? const Icon(
                          CupertinoIcons.arrowtriangle_down_fill,
                          color: Colors.grey,
                          size: 19,
                        )
                      : const Icon(
                          CupertinoIcons.arrowtriangle_up_fill,
                          color: Colors.grey,
                          size: 19,
                        ),
                  const SizedBox(
                    width: 5,
                  ),
                  !providerAnswer
                      ? const Text(
                          "Daha fazla",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      : const Text(
                          "Daha az",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          child: Text(""),
          width: MediaQuery.of(context).size.width,
          height: 1,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
