import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/features/onboarding/cubit/on_boarding_cubit.dart';
import 'package:ecotivy/features/onboarding/widgets/instruction.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/header.dart';
import '../widgets/developer_profile.dart';
import '../widgets/learning_outcomes.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {

            return ListView(
              children: [
                const Header(),
                if (state.controller != null)
                  SizedBox(
                    height: ResponsiveBreakpoints.of(context)
                            .largerThan(TABLET)
                        ? 525
                        : ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                            ? 600
                            : 800,
                    child: PageView(
                      controller: state.controller,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        context.read<OnBoardingCubit>().jumpToPage(index);
                      },
                      pageSnapping: true,
                      dragStartBehavior: DragStartBehavior.start,

                      children: const [Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: LearningOutcomes(),
                      ), Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: DeveloperProfile(),
                      ), Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Instruction(),
                      )],
                    ),
                  ),
                const SizedBox(
                  height: 15,
                ),
                if (state.controller != null)
                  Align(
                    alignment: Alignment.topCenter,
                    child: SmoothPageIndicator(
                      controller: state.controller!,
                      count: state.totalPage + 1,
                      effect: const JumpingDotEffect(
                        dotHeight: 13,
                        activeDotColor: Color(0xFF00CE8E),
                        dotColor: Colors.white,
                        dotWidth: 13,
                        jumpScale: .9,
                        verticalOffset: 15,
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaxWidthBox(
                    maxWidth: 600,
                    child: SizedBox(
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF00CE8E),
                          ),

                          onPressed: () {
                           if (state.isComplete) {
                             context.go('/tutorial');
                           } else {
                             context.read<OnBoardingCubit>().nextPages();
                           }
                          },
                          child:  Text(state.isComplete ? "Materi Selanjutnya" : "Selanjutnya",

                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
              ],
            );
          },
        ));
  }
}
