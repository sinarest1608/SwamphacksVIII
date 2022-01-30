// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:bnb/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeResultsView extends GetView {
  void launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  @override
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.searchResults.length == 0
              ? CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    itemCount: controller.searchResults.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () async {
                            Get.snackbar(
                                "Please Wait!", "While we featch the details");
                            //TODO
                            launchURL(await controller.getDetails(
                                controller.searchResults[index].id.toString()));
                          },
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        controller.searchResults[index].image)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 70,
                                    width: 180,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.searchResults[index].title
                                            .toString()
                                            .capitalizeFirst!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.green,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ));
  }
}
