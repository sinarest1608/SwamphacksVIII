// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bnb/app/modules/home/controllers/home_controller.dart';
import 'package:bnb/app/modules/home/views/recipe_results_view.dart';
import 'package:bnb/app/modules/home/widgets/ingredient_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class UserHomeView extends GetView {
  void launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  TextEditingController _textContr = TextEditingController();
  final controller;
  UserHomeView(this.controller);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Color(0xfffbfcfe),
          floatingActionButton: controller.userIngredients.length == 0
              ? Container()
              : FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    Get.to(RecipeResultsView());
                    controller.handleSearch(controller.userIngredients);
                  },
                  child: Icon(Icons.check),
                  isExtended: true,
                ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find Best Recipe \nFor Cooking !",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                // Container(
                //   color: Color(0xFFEEF9F0),
                //   height: 100,
                //   width: Get.width * 0.8,
                //   child: Row(
                //     children: [
                //       Image.asset("assets/images/food.png"),
                //       Text("You have 12 liked Recipes\nSee Recipes")
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: Colors.blue.withOpacity(0.2),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _textContr,
                      onFieldSubmitted: (ingredient) {
                        controller.userIngredients.add(ingredient);
                        _textContr.clear();
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                        filled: true,
                        labelText: "Enter Ingredients",
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.userIngredients.length != 0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Click bottom button to search!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: controller.userIngredients.length != 0,
                  child: Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: controller.userIngredients.length,
                        itemBuilder: (context, index) {
                          if (controller.userIngredients.length == 0) {}
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ingredientCard(
                                controller.userIngredients[index], controller),
                          );
                        },
                      )),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        "Try Something New !",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: controller.randomRecipes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              launchURL(controller
                                  .randomRecipes[index].spoonacularSourceUrl);
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    controller.randomRecipes[index].image,
                                    color: Colors.black38,
                                    colorBlendMode: BlendMode.multiply,
                                    height: 450,
                                    width: Get.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // Align(
                                //   alignment: Alignment.topRight,
                                //   child: IconButton(
                                //       onPressed: () {},
                                //       icon: Icon(
                                //         Icons.favorite,
                                //         color: Colors.red,
                                //       )),
                                // ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25.0, vertical: 30),
                                    child: Text(
                                      controller.randomRecipes[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
