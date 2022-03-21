import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaTreino extends StatelessWidget {
  const SesiacademiaTreino({Key? key}) : super(key: key);

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
            child: const Image(
              image: AssetImage('assets/images/treino.png'),
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              height: 109,
              color: Colors.blue,
              child: Column(
                children: [
                  Text(
                    "Leg push ",
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      CircleAvatar(),
                      Text("3x15 repetições"),
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
