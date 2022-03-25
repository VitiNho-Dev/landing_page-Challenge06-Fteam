import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String url;
  final String iconAsset;
  final double width;
  final double height;

  const CustomTextButtonWidget({
    Key? key,
    required this.url,
    required this.iconAsset,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch Maps';
        }
      },
      child: Container(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          iconAsset,
          color: Colors.white,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
