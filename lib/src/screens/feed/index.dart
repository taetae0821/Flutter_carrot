import 'package:flutter/material.dart';

import 'package:carrot_flutter/src/widgets/listitems/feed_list_item.dart';
import 'package:carrot_flutter/src/widgets/buttons/category_buttton.dart';

class FeedIndex extends StatefulWidget{
  const FeedIndex({super.key});
  @override
  State<FeedIndex> createState() => _FeedIndexState();
}

class _FeedIndexState extends State<FeedIndex>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('내 동네'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_on_rounded))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child : ListView(
              scrollDirection: Axis.horizontal,
              children: const[
                CategoryButtton(icon: Icons.menu),
                SizedBox(width: 12),
                CategoryButtton(icon: Icons.search, title: '알바'),
                SizedBox(width: 12),
                CategoryButtton(icon: Icons.home, title: '부동산'),
                SizedBox(width: 12),
                CategoryButtton(icon: Icons.car_crash, title: '중고차'),
                
            
              ],
            ),
            ),
            Expanded(child: ListView(
              children: [
                FeedListItem(),
                FeedListItem(),
                FeedListItem(),
                FeedListItem(),
                FeedListItem(),
              ],
            ))
        ],
      ),
    );
  }
}