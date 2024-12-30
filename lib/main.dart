import 'package:bookly_app/core/api/dio_helper.dart';
import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImplement(
              DioHelper(
                dio: Dio(),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(
            HomeRepoImplement(
              DioHelper(
                dio: Dio(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.primaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          routerConfig: AppRouter.router),
    );
  }
}
