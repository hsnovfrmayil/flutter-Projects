import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_book/pages/compas/compas_common/read_follow/reafollow_widget/user_container.dart';

class ReadFollowCompas extends StatelessWidget {
  const ReadFollowCompas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const UserContainer();
          }),
    );
  }
}
