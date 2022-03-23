import 'package:flutter/material.dart';
import 'package:get/get.dart';

class pageDrawer extends StatelessWidget {
  const pageDrawer({
    Key? key,
  }) : super(key: key);

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
                children: const [
                  Image(
                    image: AssetImage('assets/images/Ellipse 2.png'),
                    width: 90,
                    height: 90,
                  ),
                  Text(
                    'Fulana de Tal dos Santos',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: const Text(
              'Meus Dados',
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              Get.offAndToNamed('/meusDados');
            },
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
              Get.offAndToNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
