import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareAccountWidget extends StatelessWidget {
  const ShareAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.person),
        ],
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                "HaSanov",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text("*Takip Et"),
              )
            ],
          ),
          Row(
            children: [
              const Text("8s"),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.ellipsis))
            ],
          )
        ],
      ),
      subtitle: const Row(
        children: [
          Text(
            "@frmayilhsnov",
          ),
          SizedBox(width: 10),
          Text("Kitap okuyor"),
        ],
      ),
    );
  }
}
