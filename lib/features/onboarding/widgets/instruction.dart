import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/max_width_box.dart';

class Instruction extends StatelessWidget {
  const Instruction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 600,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Petunjuk Penggunaan",
              style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 170,
                child: Image(
                    fit: BoxFit.contain,
                    image: getIt<PNGResourceManager>().getAssetWidget(
                      Resource.playTimeIcon,
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                {
                  1: "Media pembelajaran interaktif “ECOTIVY” membutuhkan jaringan internet untuk mengaksesnya."
                },
                {
                  2: "Dibutuhkan dampingan guru untuk mengikuti alur pembelajaran dalam media pembelajaran interaktif “ECOTIVY”."
                },
                {
                  3: "Ikuti setiap perintah yang terdapat pada media pembelajaran interaktif “ECOTIVY” yakni Menyimak Video, Membuat Kelompok Kecil, Mengumpulkan Point Sebanyak-Banyaknya Melalui Quiz, dan Mari Berdiskusi."
                },
              ]
                  .map((e) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${e.keys.first}. ",
                            style: const TextStyle(
                              color: Color(0xFF949292),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              e.values.first,
                              style: const TextStyle(
                                color: Color(0xFF949292),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
