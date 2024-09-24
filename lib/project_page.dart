import 'package:flutter/material.dart';
import 'package:portfolio/list_item.dart';

import 'search_widget.dart';

// ignore: must_be_immutable
class ProjectPage extends StatelessWidget {
  ProjectPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xfffdf5532),
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        label: const Text(
          ' Filter ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        icon: const Icon(
          Icons.filter_list,
          size: 25,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const SearchField(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (ctx, no) {
                    return list[no];
                  }),
            ),
          )
        ],
      ),
    );
  }

  List<ListItem> list = [
    const ListItem(img: 'assets/image1.png'),
    const ListItem(img: 'assets/image2.png'),
    const ListItem(img: 'assets/image3.png'),
    const ListItem(img: 'assets/image4.png'),
    const ListItem(img: 'assets/image5.png'),
  ];
}
