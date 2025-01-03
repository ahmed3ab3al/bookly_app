import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/books_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String booksDetailsView = '/booksDetailsView';
  static const String searchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        //  path: '/',
        path: booksDetailsView,
        builder: (context, state) => const BooksDetailsView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}