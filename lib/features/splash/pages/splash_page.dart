import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/features/splash/cubit/splash_cubit.dart';
import 'package:ecotivy/utils/resource_manager.dart';
import 'package:ecotivy/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:responsive_framework/max_width_box.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state.moveToOtherPage) {
          context.go('/onboarding');
        }
      },
      child: Scaffold(
        body: ListView(
          children: [
            const Header(),
            const SizedBox(height: 80),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('SELAMAT DATANG',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
                const Text('MEDIA PEMBELAJARAN INTERAKTIF',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image(
                    image: getIt<PNGResourceManager>().getAssetWidget(Resource.appIcon),
                  ),),
                const SizedBox(height: 60),
                const Text('ECOTIVY',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaxWidthBox(
                    maxWidth: 200,
                    child: SizedBox(
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF00CE8E),
                          ),

                          onPressed: () {
                            context.go('/onboarding');
                          },
                          child:  const Text("Mulai",
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
