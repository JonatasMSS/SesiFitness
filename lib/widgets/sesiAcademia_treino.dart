import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SesiacademiaTreino extends StatelessWidget {
  SesiacademiaTreino({
    Key? key,
    required this.assetImage,
    this.title = "null",
    this.repetition = "none",
  }) : super(key: key);

  final String assetImage;
  final String title;
  final String repetition;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: context.widthTransformer(reducedBy: 10),
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 180, 180, 180),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: Color.fromARGB(255, 133, 133, 133),
                width: 1,
              ),
            ),
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage(assetImage),
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              height: 109,
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Icon_halter.svg",
                        height: 40,
                      ),
                      Text(
                        repetition,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
