import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../provider/constants/other_more_provider.dart';
import 'discover_widget/subject_discover.dart';

class DiscoverCompas extends ConsumerWidget {
  DiscoverCompas({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            DiscoverSubject(
              func: () {
                ref.read(otherMoreProviderSubject.notifier).update(
                      (state) => !ref.watch(otherMoreProviderSubject),
                    );
              },
              providerAnswer: ref.watch(otherMoreProviderSubject),
              answerSubject: false,
              url: "",
            ),
            DiscoverSubject(
              func: () {
                ref.read(otherMoreProviderPoets.notifier).update(
                      (state) => !ref.watch(otherMoreProviderPoets),
                    );
              },
              providerAnswer: ref.watch(otherMoreProviderPoets),
              answerSubject: true,
              url: "https://www.evrensel.net/upload/dosya/153830.jpg",
            ),
            DiscoverSubject(
              func: () {
                ref.read(otherMoreProviderBooks.notifier).update(
                      (state) => !ref.watch(otherMoreProviderBooks),
                    );
              },
              providerAnswer: ref.watch(otherMoreProviderBooks),
              answerSubject: true,
              url:
                  "https://productimages.hepsiburada.net/s/40/375-375/10683166392370.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
