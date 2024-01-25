import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:ecotivy/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class KnowledgePage extends StatelessWidget {
  const KnowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        children: [
          const Header(),
          MaxWidthBox(
            maxWidth: 700,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Karakter yang Dikembangkan Peserta Didik",
                    style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.knowledgeIcon))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      ''' 1.\t Religius
2.\t Peduli Sosial
3.\t Kearifan Lokal
4.\t Jiwa Entrepeneur
5.\t Bekerja Keras
6.\t Pantang Menyerah
                      ''',
                      style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaxWidthBox(
              maxWidth: 700,
              child: SizedBox(
                height: 40,
                child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF00CE8E),
                    ),

                    onPressed: () {
                      context.go("/conclusion");
                    },
                    child:  const Text("Selanjutnya",
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }


}