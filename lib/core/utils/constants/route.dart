import 'package:book_app/Featuers/home/presentation/views/Book_detailes_view.dart';
import 'package:book_app/Featuers/home/presentation/views/home_view.dart';
import 'package:book_app/Featuers/presentation/view/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class routes {
  static const kHomeView = '/homeview';
  static const kDetailsView = '/detailsview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return SplashView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) {
        return const BookDetailsView();
      },
    )
  ]);
}
