import 'package:flutter/material.dart';
import 'package:tugasp4/body_banner.dart';
import 'package:tugasp4/item_view.dart';

Widget Body({List<BBanner> banners = const [], List<Item> items = const []}) {
  List<Widget> widgets = [];
  widgets.add(BodyBanner(banners: banners));
  widgets.addAll(ItemsView(items: items));

  return ListView(
    children: widgets,
  );
}
