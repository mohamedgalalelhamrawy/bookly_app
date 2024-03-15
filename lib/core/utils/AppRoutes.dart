
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/homeview.dart';
import 'package:bookly_app/features/splach/presentation/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeview';
   static const kbookdetailsview = '/bookdetailsview';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => splach_view(),
    ),
     GoRoute(
      path: khomeview,
      builder: (context, state) => homeview(),
    ),
     GoRoute(
      path: kbookdetailsview,
      builder: (context, state) => bookDetailsView(),
    ),
  ],
);
}