import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectIndex = StateProvider<int>(
  (ref) {
    return 0;
  },
);
