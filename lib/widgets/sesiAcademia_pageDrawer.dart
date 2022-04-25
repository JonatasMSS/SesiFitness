import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

class pageDrawer extends StatelessWidget {
  const pageDrawer({
    Key? key,
    required this.person,
  }) : super(key: key);

  final AlunoModel person;

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
                    image: AssetImage('assets/images/MENINOLOGO.png'),
                    width: 90,
                    height: 90,
                  ),
                  Text(
                    person.nome,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
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
              Get.toNamed('/meusDados', arguments: person);
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
