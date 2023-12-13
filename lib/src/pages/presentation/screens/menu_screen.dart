import 'package:clippy/src/global_things/presentation/controllers/zoom_drawer_controller.dart';
import 'package:clippy/src/global_things/presentation/themes/app_colors.dart';
import 'package:clippy/src/global_things/presentation/themes/ui_parameters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMenuScreen extends GetView<MyZoomDrawerController> { //GetView replaces stateless class, takes a class type as parameter
  const MyMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIParameters.mobileScreenPadding,
      width: double.maxFinite,
      decoration: BoxDecoration(gradient: mainGradient()),
      child: Theme(
        data: ThemeData(textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: onSurfaceTextColor)
        )
        ),
        child: SafeArea(
          child: Stack(
            children: [
                Positioned(
                    top: 0,
                    right:0,
                    child: BackButton(
                  color: Colors.white,
                  onPressed: (){
                    controller.toggleDrawer(); //access method in desired controller directly
                  },
                ))
            ],
          ),
        ),
      ),
    );
  }
}