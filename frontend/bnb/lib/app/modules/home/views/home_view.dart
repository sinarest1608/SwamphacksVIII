import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bnb/app/modules/home/controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(239, 222, 205, 0),
      appBar: AppBar(
        title: Text('BnB', style: TextStyle(color: Colors.white, fontSize: 28)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/joseph_detail.jpg'), fit: BoxFit.fill)),
        ),
      ),
      body: Center(
        child: Text(
          'HomeView is working :-)',
          //style: TextStyle(fontSize:20),
          style: GoogleFonts.medievalSharp(
            textStyle: TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
