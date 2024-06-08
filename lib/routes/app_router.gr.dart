// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:demo_task/data/models/article_type.dart' as _i5;
import 'package:demo_task/ui/screens/article_detail_screen.dart' as _i1;
import 'package:demo_task/ui/screens/article_screen.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ArticleDetailScreen(
          key: args.key,
          articleView: args.articleView,
        ),
      );
    },
    ArticleRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ArticleScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ArticleDetailScreen]
class ArticleDetailRoute extends _i3.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    _i4.Key? key,
    required _i5.ArticleType articleView,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          ArticleDetailRoute.name,
          args: ArticleDetailRouteArgs(
            key: key,
            articleView: articleView,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailRoute';

  static const _i3.PageInfo<ArticleDetailRouteArgs> page =
      _i3.PageInfo<ArticleDetailRouteArgs>(name);
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({
    this.key,
    required this.articleView,
  });

  final _i4.Key? key;

  final _i5.ArticleType articleView;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, articleView: $articleView}';
  }
}

/// generated route for
/// [_i2.ArticleScreen]
class ArticleRoute extends _i3.PageRouteInfo<void> {
  const ArticleRoute({List<_i3.PageRouteInfo>? children})
      : super(
          ArticleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
