import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SesiacademiaTreino extends StatefulWidget {
  const SesiacademiaTreino({
    Key? key,
    required this.assetImage,
    this.title = "null",
    this.series = "none",
    this.repetition = "none",
    this.pageRoute,
    this.descriptionNextPage = "NONE",
    this.gifVideo,
    this.observ,
    this.carga,
    this.descanso,
    this.cadenc,
    this.routerOn = true,
  }) : super(key: key);

  final String assetImage;
  final String title;
  final String repetition;
  final String series;

  final String? pageRoute;
  final String descriptionNextPage;
  final String? gifVideo;
  final String? observ;
  final String? carga;
  final String? descanso;
  final String? cadenc;
  final bool routerOn;

  @override
  State<SesiacademiaTreino> createState() => _SesiacademiaTreinoState();
}

class _SesiacademiaTreinoState extends State<SesiacademiaTreino> {
  void changePage(String? pageName) {
    if (pageName != "null") {
      Get.toNamed(
        pageName!,
        arguments: {
          "titlePage": widget.title,
          "repetitions": widget.repetition,
          "series": widget.series,
          "description": widget.descriptionNextPage,
          "gifVideo": widget.gifVideo ?? "",
          "carga": widget.carga ?? "0",
          "cadencia": widget.cadenc ?? "0",
          "descanso": widget.descanso ?? "0",
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.routerOn) {
      return GestureDetector(
        onTap: () => changePage(widget.pageRoute!),
        child: Container(
          margin: const EdgeInsets.all(20),
          width: context.widthTransformer(reducedBy: 10),
          //height: 110,
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
                    color: const Color.fromARGB(255, 133, 133, 133),
                    width: 1,
                  ),
                ),
                width: 120,
                height: 120,
                child: Image(
                  image: AssetImage(widget.assetImage),
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: SizedBox(
                  //height: 109,
                  child: Column(
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(fontSize: 30),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Series: ' + widget.repetition,
                            style: const TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Repetições: ' + widget.repetition,
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
        ),
      );
    } else {
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
                image: AssetImage(widget.assetImage),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                height: 109,
                child: Column(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 28),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Icon_halter.svg",
                          height: 35,
                        ),
                        Text(
                          widget.repetition,
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
}
