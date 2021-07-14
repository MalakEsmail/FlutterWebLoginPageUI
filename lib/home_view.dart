import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_login_ui/home_desctop.dart';
import 'package:web_login_ui/home_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      desktop: HomeDesctop(),
    );
  }
}
