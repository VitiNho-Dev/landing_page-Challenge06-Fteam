import 'package:flutter/material.dart';

class CustomInformationReposiotryWidget extends StatelessWidget {
  const CustomInformationReposiotryWidget({
    Key? key,
    required this.height,
    required this.name,
    required this.sobre,
    this.onPressed,
  }) : super(key: key);

  final double height;
  final String name;
  final String sobre;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            sobre,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: onPressed,
                child: Text(
                  'Acessar o repositorio',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
