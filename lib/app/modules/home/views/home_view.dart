import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    //GETX FITUR
    double paddingTOP = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar(){
      return AppBar(
        title: Text("Home"),
      );
    }
    double heightBody = context.height - myAppBar().preferredSize.height-paddingTOP;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width * 0.5,
        height: Get.height * 0.3,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, contraints){
          double lebarKuning = contraints.maxWidth;
          double tinggiKuning = contraints.maxHeight;
          return Stack(
            children: [
              Container(
                width: lebarKuning * 0.25,
                height: tinggiKuning,
                color: Colors.red,
              ),
            ],
          );
        },
      ),
    ) 
  );
  }
}