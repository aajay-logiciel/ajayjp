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
      this.defaultBorder,
      required this.image,
      this.fit = BoxFit.fill,
      Key? key})
      : super(key: key);

  /// Defines width of avatar
  final double? width;

  /// Defines height of avatar
  final double? height;

  /// Defines radius of avatar
  final double radius;

  /// Defines borderColor of avatar
  final Color borderColor;

  /// Defines borderWidth of avatar
  final double borderWidth;

  /// Defines size [JPAvatarSize.medium] of avatar
  final JPAvatarSize? size;

  /// Defines defaultBorder of a avatar
  final Color? defaultBorder;

  /// Defines image of a avatar
  final ImageProvider image;

  /// Define to fit image in a given size of a avatar
  final BoxFit fit;

  @override
  State<JPAvatar> createState() => _JPAvatarState();
}

class _JPAvatarState extends State<JPAvatar> {
  double? width;
  double? height;

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
          image: DecorationImage(
            image: widget.image,
            fit: widget.fit,
          ),
          border: Border.all(
            color: widget.defaultBorder ?? widget.borderColor,
            width: widget.borderWidth,
          )),
    );
  }
}
