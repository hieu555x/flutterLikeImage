import 'package:flutter/material.dart';
import 'package:flutterlikeimage/model/item_modal.dart';
import 'package:flutterlikeimage/provider/items_provider.dart';
import 'package:flutterlikeimage/widget/swipe_body.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class MyHomeApp extends StatelessWidget {
  MyHomeApp({
    Key? key,
  }) : super(key: key);

  final List<Item> Items = [
    Item(
        id: "1",
        name: "Chief Interactions Officer",
        image: "http://placeimg.com/640/480/sports"),
    Item(
        id: "2",
        name: "Central Assurance Liaison",
        image: "http://placeimg.com/640/481/animals"),
    Item(
        id: "3",
        name: "Investor Data Consultant",
        image: "http://placeimg.com/640/482/sports"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 92,
        title: const Text(
          "IMAGE LIKE APP",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat",
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text(
                  ("Show all"),
                ),
              ),
              const PopupMenuItem(
                child: Text(
                  ("Show all"),
                ),
              ),
            ],
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Consumer<ItemsProvider>(
            builder: (context, item, child) {
              return badges.Badge(
                badgeContent: Text(
                  item.getFavorite().toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: const Icon(Icons.favorite),
              );
            },
          ),
        ),
        elevation: 20.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 232, 142, 53),
                  Color.fromARGB(255, 247, 227, 22),
                ]),
          ),
        ),
      ),
      body: SwipeBody(items: Items),
    );
  }
}
