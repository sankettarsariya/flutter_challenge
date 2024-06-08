import 'package:auto_route/auto_route.dart';
import 'package:demo_task/data/models/article_type.dart';
import 'package:demo_task/ui/view/article_detail_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArticleDetailScreen extends StatefulWidget {
  const ArticleDetailScreen({
    super.key,
    required this.articleView,
  });

 final ArticleType articleView;

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArticleDetailView(
          image: widget.articleView.images.image,
          description: widget.articleView.elem.description,
          title: widget.articleView.title,
          hours: widget.articleView.date.publishedAt.hour.toString(),
      ),
    );
  }
}
