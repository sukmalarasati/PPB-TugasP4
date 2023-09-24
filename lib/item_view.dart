import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Item {
  int avatar = 0;
  String title = "";
  String subtitle = "";
  double rate = 0;

  Item(this.avatar, this.title, this.subtitle, this.rate);
}

Widget ItemView(Item item) {
  return ListTile(
    leading: Image.asset("images/avatar-${item.avatar}.png"),
    title: Row(children: [
      Expanded(child: Text(item.title)),
      RatingBarIndicator(
        rating: item.rate,
        itemBuilder: (context, index) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemCount: 5,
        itemSize: 16.0,
        direction: Axis.horizontal,
      ),
    ]),
    subtitle: Text(item.subtitle),
  );
}

Iterable<Widget> ItemsView({List<Item> items = const []}) {
  return items.map((item) => ItemView(item));
}
