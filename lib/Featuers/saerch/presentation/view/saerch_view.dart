import 'package:book_app/Featuers/saerch/presentation/view/widget/saerch_view_body.dart';
import 'package:flutter/material.dart';

class SaerchView extends StatelessWidget {
  const SaerchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SaerchViewBody()),
    );
  }
}
