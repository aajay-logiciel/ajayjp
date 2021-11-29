import 'package:flutter/material.dart';
import 'package:jp_ui_kit/Avatar/avatar_size.dart';
import 'package:jp_ui_kit/CommonFiles/color.dart';

class JPAvatar extends StatefulWidget {
  const JPAvatar(
      {this.height,
      this.width,
      this.radius = 50.0,
      this.borderColor = JPColor.transparent,
      this.borderWidth = 0.0,
      this.size,
      Key? key})
      : super(key: key);


  final double? width;
  final double? height;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final JPAvatarSize? size;

  @override
  State<JPAvatar> createState() => _JPAvatarState();
}

class _JPAvatarState extends State<JPAvatar> {
  late double? width;
  late double? height;

  @override
  void initState() {
    width = widget.width;
    height = widget.height;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getSize() {
      switch (widget.size) {
        case JPAvatarSize.large:
          return height = width = 42.0;
        case JPAvatarSize.medium:
          return height = width = 36.0;
        case JPAvatarSize.small:
          return height = width = 24.0;
        default:
          return height = width = 36.0;
      }
    }

    return Container(
      width: getSize(),
      height: getSize(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          color: Colors.black,
          border: Border.all(
            color: widget.borderColor,
            width: widget.borderWidth,
          )),
    );
  }
}
