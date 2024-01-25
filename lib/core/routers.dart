import 'dart:js';

import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/features/conclusion/pages/conclusion_page.dart';
import 'package:ecotivy/features/discus/pages/discus_page.dart';
import 'package:ecotivy/features/final/pages/final_page.dart';
import 'package:ecotivy/features/games/pages/game_page.dart';
import 'package:ecotivy/features/group/pages/group_page.dart';
import 'package:ecotivy/features/knowladge/pages/knowledge_page.dart';
import 'package:ecotivy/features/onboarding/cubit/on_boarding_cubit.dart';
import 'package:ecotivy/features/onboarding/pages/onboarding_page.dart';
import 'package:ecotivy/features/splash/cubit/splash_cubit.dart';
import 'package:ecotivy/features/splash/pages/splash_page.dart';
import 'package:ecotivy/features/tutorial/cubit/tutorial_cubit.dart';
import 'package:ecotivy/features/tutorial/pages/tutorial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider<SplashCubit>(
          create: (BuildContext context) => getIt<SplashCubit>()..splashTime(),
          child: const SplashPage(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/onboarding',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider<OnBoardingCubit>(
            create: (BuildContext context) => getIt<OnBoardingCubit>()..initController(),
        child: const OnBoardingPage()),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/tutorial',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: BlocProvider<TutorialCubit>(
            create: (BuildContext context) => getIt<TutorialCubit>()..initController(),
            child: const TutorialPage()),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/games',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const GamePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/discus',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const DiscusPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/conclusion',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ConclusionPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/group',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const GroupPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/knowledge',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const KnowledgePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/final',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const FinalPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
  ],
);
