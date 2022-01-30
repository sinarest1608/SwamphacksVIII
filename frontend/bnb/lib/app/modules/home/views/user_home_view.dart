// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bnb/app/modules/home/controllers/home_controller.dart';
import 'package:bnb/app/modules/home/views/recipe_results_view.dart';
import 'package:bnb/app/modules/home/widgets/ingredient_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserHomeView extends GetView {
  TextEditingController _textContr = TextEditingController();
  final controller;
  UserHomeView(this.controller);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => Scaffold(
            floatingActionButton: controller.userIngredients.length == 0
                ? Container()
                : FloatingActionButton(
                    onPressed: () {
                      Get.to(RecipeResultsView());
                      controller.handleSearch(controller.userIngredients);
                    },
                    child: Text("Submit"),
                    isExtended: true,
                  ),
            // appBar: AppBar(
            //   title: Text('UserHomeView'),
            //   centerTitle: true,
            // ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hello Luis,",
                            style: TextStyle(
                                color: Color(0xFF1F8D7A),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "What do you want to cook today?",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        child: OctoImage.fromSet(
                          image: NetworkImage(
                            "https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg",
                          ),
                          height: Get.height * 0.05,
                          // width: Get.width * 0.25,
                          fit: BoxFit.cover,
                          octoSet:
                              OctoSet.blurHash('LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: Color(0xFFEEF9F0),
                    height: 100,
                    width: Get.width * 0.8,
                    child: Row(
                      children: [
                        Image.asset("assets/images/food.png"),
                        Text("You have 12 liked Recipes\nSee Recipes")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      //keyboardType: type,
                      //maxLines: maxLines,
                      controller: _textContr,
                      onFieldSubmitted: (ingredient) {
                        controller.userIngredients.add(ingredient);
                        _textContr.clear();
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "Type item to search",
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
                  Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: controller.userIngredients.length,
                        itemBuilder: (context, index) {
                          if (controller.userIngredients.length == 0) {
                            return Container();
                          }
                          return ingredientCard(
                              controller.userIngredients[index], controller);
                        },
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
