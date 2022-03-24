import 'package:flutter/material.dart';

class CustomImageWidget extends StatefulWidget {
  final String name;
  final double height;
  final double width;

  const CustomImageWidget({
    Key? key,
    required this.name,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<CustomImageWidget> createState() => _CustomImageWidgetState();
}

class _CustomImageWidgetState extends State<CustomImageWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        widget.name,
        height: widget.height,
        width: widget.width,
      ),
    );
  }
}
