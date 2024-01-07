import 'package:book_app/Featuers/presentation/view/widget/Splashviewbody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff100B20),
      body: SplashViewBody(),
    );
  }
}
