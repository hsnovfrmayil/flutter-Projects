import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flow_widgets/heart_comment_share.dart';
import 'flow_widgets/share_account_widget.dart';
import 'flow_widgets/share_post_text.dart';

class FlowHomeCommon extends StatelessWidget {
  const FlowHomeCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.black,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ShareAccountWidget(),
              ),
              SharePostText(),
              Column(
                children: [
                  ListTile(
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.person),
                      ],
                    ),
                    title: Text("Resat Nuri Guntekin"),
                    subtitle: Text("Acimak"),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: HeartCommentShare(),
              )
            ],
          ),
        );
      },
    );
  }
}
