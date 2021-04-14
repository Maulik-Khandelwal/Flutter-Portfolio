import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/views/Experience/experience_view.dart';
import 'package:portfolio/views/Project/project_view.dart';
import 'package:portfolio/views/about/about_view.dart';
import 'package:portfolio/views/contact/contact_view.dart';
import 'package:portfolio/views/home/home_view.dart';
import 'package:portfolio/views/skill/skill_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case SkillRoute:
      return _getPageRoute(SkillView());
    case ExperienceRoute:
      return _getPageRoute(ExperienceView());
    case ProjectRoute:
      return _getPageRoute(ProjectView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
