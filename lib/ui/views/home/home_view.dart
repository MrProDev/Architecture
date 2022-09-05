import 'package:animations/animations.dart';
import 'package:architecture/ui/views/future_example/future_example_view.dart';
import 'package:architecture/ui/views/home/home_view_model.dart';
import 'package:architecture/ui/views/posts_example/posts_view.dart';
import 'package:architecture/ui/views/stream_example/stream_example_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
          reverse: model.reverse,
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child,
          ),
          child: getViewForIndex(model.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: model.currentIndex,
          onTap: (int newValue) {
            model.setIndex(newValue);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.art_track_outlined),
              label: 'Favourite',
              activeIcon: Icon(Icons.art_track),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
              activeIcon: Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }

  Widget getViewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const StreamExampleView();
      case 1:
        return const FutureExampleView();
      default:
        return const PostsView();
    }
  }
}
