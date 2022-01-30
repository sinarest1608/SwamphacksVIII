// ignore_for_file: prefer_const_constructors

import 'package:bnb/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';

Widget ingredientCard(String name, HomeController controller) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    shadowColor: Colors.blue.withOpacity(0.2),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: OctoImage.fromSet(
          image: NetworkImage(
            "https://spoonacular.com/cdn/ingredients_100x100/$name.jpg",
          ),
          height: Get.height * 0.05,
          // width: Get.width * 0.25,
          fit: BoxFit.cover,
          octoSet: OctoSet.blurHash('LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
        ),
      ),
      title: Text(name),
      trailing: IconButton(
          onPressed: () {
            controller.userIngredients.remove(name);
          },
          icon: Icon(
            Icons.remove,
            color: Colors.red,
          )),
    ),
  );
}
