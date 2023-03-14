import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:flutterlikeimage/model/item_modal.dart';
import 'package:flutterlikeimage/provider/items_provider.dart';
import 'package:provider/provider.dart';

class SwipeBody extends StatelessWidget {
  SwipeBody({
    super.key,
    required this.items,
  });

  List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Swiper(
      layout: SwiperLayout.STACK,
      itemWidth: 350,
      itemHeight: 650,
      itemCount: items.length,
      itemBuilder: (BuildContext context, index) {
        print(index);
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.white24,
              title: InkWell(
                onTap: (() {
                  Provider.of<ItemsProvider>(context, listen: false)
                      .updateFavorite();
                }),
                child: const Icon(
                  Icons.favorite,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              subtitle: const Text("Like Image"),
              trailing: Text(
                items[index].name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            child: Image.network(
              items[index].image,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
