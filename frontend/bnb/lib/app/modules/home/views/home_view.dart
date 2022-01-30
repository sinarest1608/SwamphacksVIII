import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:bnb/app/modules/home/views/user_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:bnb/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> gradient = [const Color(0xFF1DA383), const Color(0xFF48D89E)];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/homeBG.jpeg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Some good Fucking Food!",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              ArgonButton(
                height: Get.height * 0.08,
                width: Get.width * 0.8,
                borderRadius: 15.0,
                roundLoadingShape: true,
                color: const Color(0xFF7866FE),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: SpinKitDoubleBounce(
                      color: Colors.white,
                      // size: loaderWidth ,
                    ),
                  ),
                ),
                onTap: (startLoading, stopLoading, btnState) {
                  if (btnState == ButtonState.Idle) {
                    //startLoading();
                    //await doNetworkRequest();
                    //TODO: Add login
                    Get.to(() => UserHomeView(controller));
                    //stopLoading();
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ArgonButton(
                height: Get.height * 0.08,
                width: Get.width * 0.8,
                borderRadius: 15.0,
                color: const Color(0xFF7866FE),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                loader: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: SpinKitDoubleBounce(
                      color: Colors.white,
                      // size: loaderWidth ,
                    ),
                  ),
                ),
                onTap: (startLoading, stopLoading, btnState) {
                  if (btnState == ButtonState.Idle) {
                    startLoading();
                    //await doNetworkRequest();
                    //TODO: Add Sign up
                    //stopLoading();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
