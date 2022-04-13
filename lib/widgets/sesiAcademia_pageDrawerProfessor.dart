import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesiacademiaPagedrawerprofessor extends StatelessWidget {
  SesiacademiaPagedrawerprofessor({
    Key? key,
    this.nomeProf = 'Professor Fulano de Tal',
  }) : super(key: key);
  final String nomeProf;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // ignore: prefer_const_constructors
          SizedBox(
            height: context.heightTransformer(reducedBy: 74),
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF1D4A8C),
              ),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/Ellipse 2.png'),
                    width: 90,
                    height: 90,
                  ),
                  Text(nomeProf,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),
            title: const Text(
              'Sair',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              Get.offAllNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
