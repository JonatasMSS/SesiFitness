import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaAppbarbuttons extends StatefulWidget {
  SesiacademiaAppbarbuttons(
      {Key? key,
      this.sizeH,
      this.descText,
      this.textColor = const Color(0xFFFFFFFF),
      required this.state,
      required this.pageRoute})
      : super(key: key);

  final double? sizeH;
  final String? descText;
  Color textColor;
  final bool state;
  final String pageRoute;

  @override
  _SesiacademiaAppbarbuttonsState createState() =>
      _SesiacademiaAppbarbuttonsState();
}

class _SesiacademiaAppbarbuttonsState extends State<SesiacademiaAppbarbuttons> {
  Color backColor = Color(0xFF597194);
  bool stateIni = false;

  @override
  void initState() {
    if (widget.state) {
      backColor = Color.fromARGB(255, 243, 243, 243);
      widget.textColor = Colors.black;
      stateIni = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!stateIni) {
          setState(() {
            backColor = Color.fromARGB(255, 243, 243, 243);
            widget.textColor = Colors.black;
            stateIni = true;
          });
        } else {
          setState(() {
            backColor = Color(0xFF597194);
            widget.textColor = Colors.white;
            stateIni = false;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: widget.sizeH,
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(9),
            bottomRight: Radius.circular(9),
          ),
        ),
        child: Text(
          widget.descText ?? "",
          style: TextStyle(
            color: widget.textColor,
          ),
        ),
      ),
    );
  }
}
