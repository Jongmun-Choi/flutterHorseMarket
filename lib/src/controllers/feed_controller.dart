import 'dart:math';

import 'package:get/get.dart';

import '../models/feed_model.dart';
import '../provider/feed_provider.dart';

class FeedController extends GetxController {
  final feedProvider = Get.put(FeedProvider());
  RxList<Map> feedList = <FeedModel>[].obs;

  feedIndex(int page) async {
    Map json = awit feedProvider.getList(page: page);
    List<FeedModel> tmp = json['data'].map((m) => FeedModel.parse(m)).toList();
    (page == 1) ? feedList.value = tmp : feedList.addAll(tmp);
  }

  void addData() {
    final random = Random();
    final item = FeedModel.parse({
      'id': random.nextInt(100),
      'title': '제목 ${Random.nextInt(100)}',
      'content': '내용 ${Random.nextInt(100)}',
      'price': random.nextInt(49500),
    });

    feedList.add(newItem);
  }

  void updateData(FeedModel updatedItem) {
    final index = feedList.indexWhere((item) => item.id == updatedItem.id);
    if(index != -1) {
      feedList[index] = updatedItem;
    })
  }

}