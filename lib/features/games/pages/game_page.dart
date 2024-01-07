import 'package:ecotivy/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';

import '../../../di/get_it.dart';
import '../../../utils/resource_manager.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Header(),
          Center(
            child: MaxWidthBox(
              maxWidth: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Row(
                      children: [
                        Icon(Icons.info_outline_rounded),
                        SizedBox(width: 10,),
                        Expanded(child: Text("Ayo kumpulkan poin sebanyak banyaknya!", style: TextStyle(
                          fontSize: 16,
                        ),))
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
                      '<iframe style="max-width:100%" src="https://wordwall.net/embed/a2f3d91e2edb40b383c23a4f3dd1091e?themeId=21&templateId=30&fontStackId=0" width="1024" height="520" frameborder="0" allowfullscreen></iframe>',
                      factoryBuilder: () => MyWidgetFactory(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaxWidthBox(
              maxWidth: 1000,
              child: SizedBox(
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF00CE8E),
                    ),
                    onPressed: () {
                      context.go('/discus');
                    },
                    child:  const Text("Selanjutnya",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      // floatingActionButton: SizedBox(
      //   width: 200,
      //   height: 50,
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       surfaceTintColor: Colors.white,
      //       foregroundColor: Color(0xFF4F4F4F),
      //       backgroundColor: Colors.white,
      //       elevation: 6.0,
      //
      //     ),
      //     onPressed: () {
      //       context.go('/discus');
      //     },
      //     child: Stack(
      //       children: [
      //         const Align(
      //           alignment: Alignment.centerLeft,
      //           child: Text(
      //             "Buat Kelompok",
      //           ),
      //         ),
      //         Align(
      //             alignment: Alignment.centerRight,
      //             child: SizedBox(
      //                 height: 30,
      //                 child: Image(
      //                     image: getIt<PNGResourceManager>()
      //                         .getAssetWidget(
      //                         Resource.conversationIcon))))
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}


class MyWidgetFactory extends WidgetFactory with WebViewFactory {
  // optional: override getter to configure how WebViews are built
  @override
  bool get webViewMediaPlaybackAlwaysAllow => true;

  @override
  String? get webViewUserAgent => 'Ecotivy';


}