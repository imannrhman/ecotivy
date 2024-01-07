import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';

import '../../../widgets/header.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ayo Bentuk Suatu Kelompok yang Terdiri dari 4-5 Anggota Setiap Kelompoknya!",
                    style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: SizedBox(
                        width: 180,
                        height: 180,
                        child: Image(image: getIt<PNGResourceManager>().getAssetWidget(Resource.meetingIcon))),
                  ),
                  const SizedBox(height: 60),
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
                      context.go('/games');
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
