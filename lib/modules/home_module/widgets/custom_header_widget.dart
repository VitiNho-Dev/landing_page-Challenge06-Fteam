import 'package:flutter/material.dart';

import 'package:landing_page/modules/home_module/widgets/custom_text_button_widget.dart';
import 'package:landing_page/utils/url.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(500),
            child: Image.network(profileImageUrl),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Victor Henrique de Oliveira',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                'Flutter Developer',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButtonWidget(
                  url: linkedinUrl,
                  iconAsset: 'assets/icons/linkedin.png',
                  width: width,
                  height: height,
                ),
                CustomTextButtonWidget(
                  url: githubUrl,
                  iconAsset: 'assets/icons/github.png',
                  width: width,
                  height: height,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
