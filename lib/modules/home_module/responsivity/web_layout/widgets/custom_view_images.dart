import 'package:flutter/material.dart';

import 'package:landing_page/modules/home_module/widgets/custom_image_widget.dart';

class CustomViewImagesWidget extends StatelessWidget {
  const CustomViewImagesWidget({
    Key? key,
    required this.size,
    required this.image1,
    required this.image2,
    required this.image3,
  }) : super(key: key);

  final Size size;
  final String image1;
  final String image2;
  final String image3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageWidget(
          name: image1,
          height: size.height * 0.3,
          width: size.width * 0.09,
        ),
        CustomImageWidget(
          name: image2,
          height: size.height * 0.4,
          width: size.width * 0.1,
        ),
        CustomImageWidget(
          name: image3,
          height: size.height * 0.3,
          width: size.width * 0.09,
        ),
      ],
    );
  }
}
