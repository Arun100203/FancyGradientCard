import 'package:fancy_gradient_card/src/utils/fancy_gradient_card_typedef.dart';
import 'package:flutter/material.dart';


class FancyGradientCard extends StatefulWidget {

  const FancyGradientCard({
    Key? key,
    this.height = 120.0,
    this.width,
    this.color1,
    this.color2,
    this.title = "Title",
    this.textColor,
    this.subtitle = "Subtitle",
    this.subtitleColor,
    required this.image,
    this.onTap,
    this.padding,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final String subtitle;
  final Color? subtitleColor;
  final String image;
  final FancyGradientCardCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;


  @override
  State<FancyGradientCard> createState() => _FancyGradientCardState();
}

class _FancyGradientCardState extends State<FancyGradientCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!() ?? () {},
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? const Color(0xFF1FE757),
            widget.color2 ?? const Color(0xFF1FE7D0)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                 widget.image,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.title,
                style: widget.titleStyle ??
                    TextStyle(
                      color: widget.textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.subtitle,
                style: widget.subtitleStyle ??
                    TextStyle(
                      color: widget.subtitleColor,
                      fontSize: 15.0,
                      // fontFamily: 'Montserrat',
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
