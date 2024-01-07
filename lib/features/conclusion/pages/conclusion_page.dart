import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../di/get_it.dart';
import '../../../utils/resource_manager.dart';
import '../../../widgets/header.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kesimpulan",
                    style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Kegiatan ekonomi merupakan segala bentuk kegiatan ataupun usaha yang dilakukan oleh seseoang guna menghasilkan suatu pendapatan untuk mencukupi kebutuhan hidup sehari-hari. Adapun kegiatan ekonomi terdiri dari kegiatan produksi, distribusi, dan konsumsi. Ketiga kegiatan ini saling berkaitan satu sama lain guna menjalani dan memenuhi kebutuhan seseorang dalam kehidupan sehari-hari.",
                    style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MaxWidthBox(
            maxWidth: 700,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pembelajaran Lebih Lanjut",
                    style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  TouchableOpacity(
                    onTap: _launchUrl,
                    child: const Text(
                      "https://youtu.be/PYmTSDeb4UU?si=X7WOri8JTOHNT91t",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
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
                      context.go("/final");
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse("https://youtu.be/PYmTSDeb4UU?si=X7WOri8JTOHNT91t"))) {
      throw Exception('Could not launch');
    }
  }
}
