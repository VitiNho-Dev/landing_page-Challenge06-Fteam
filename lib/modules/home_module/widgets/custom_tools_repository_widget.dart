import 'package:flutter/material.dart';

class CustomToolsRepositoryWidget extends StatelessWidget {
  const CustomToolsRepositoryWidget({
    Key? key,
    required this.texts,
    required this.height,
  }) : super(key: key);

  final Widget texts;
  final double height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ferramentas Utilizadas',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: size.height * 0.02),
          texts,
        ],
      ),
    );
  }
}
