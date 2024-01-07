import 'package:ecotivy/features/tutorial/cubit/tutorial_cubit.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:ecotivy/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';

import '../../../di/get_it.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: BlocBuilder<TutorialCubit, TutorialState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const Header(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 630,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline_rounded),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Klik Tombol PLAY untuk Memulai Video Pembelajaran dan Simak Video Berikut!"))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 630,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline_rounded),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Klik Tombol REPLY untuk Mengulang Video Kembali!"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 630,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline_rounded),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Ayo Jawab Setiap Pertanyaan yang Terdapat di Dalam Video Secara Bersamaan!"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: HtmlWidget(
                        '<iframe width="590" height="475" src="https://edpuzzle.com/embed/media/65702cb498952d41865a6397" frameborder="0" allowfullscreen></iframe>',
                        factoryBuilder: () => MyWidgetFactory(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi",
                      style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 590,
                      child: Text(
                        """Berikut merupakan penjelasan mengenai materi kegiatan ekonomi dalam muatan IPAS untuk siswa kelas 4 Sekolah Dasar. Adapun dalam video pembelajaran berisikan mengenai pengertian kegiatan ekonomi, pengertian dan contoh kegiatan produksi, pengertian dan contoh distribusi, pengertian kegiatan dan contoh konsumsi, dua kategori kegiatan konsumsi, skema alur kegiatan ekonomi, dan permasalahan yang muncul pada kegiatan ekonomi.""",
                        style: TextStyle(
                            color: Color(0xFF949292),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaxWidthBox(
                    maxWidth: 620,
                    child: SizedBox(
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF00CE8E),
                        ),
                        onPressed: () {
                          context.go('/group');
                        },
                        child: const Text(
                          "Selanjutnya",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {
  // optional: override getter to configure how WebViews are built
  @override
  bool get webViewMediaPlaybackAlwaysAllow => true;

  @override
  String? get webViewUserAgent => 'My app';
}
