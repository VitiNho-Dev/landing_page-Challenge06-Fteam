import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String url;
  final String iconAsset;

  const CustomTextButtonWidget({
    Key? key,
    required this.url,
    required this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch Maps';
        }
      },
      icon: Image.asset(
        iconAsset,
        scale: 1,
        color: Colors.white,
      ),
    );
  }
}
