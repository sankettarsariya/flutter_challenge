import 'package:auto_route/auto_route.dart';
import 'package:demo_task/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/provider/article_provider.dart';
import '../view/article_view.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/internet_message.dart';

@RoutePage()
class ArticleScreen extends ConsumerWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleState = ref.watch(articleProvider);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: preferredSize, child: const AppBarWidget()),
      body: Column(
        children: [
          const InternetMessage(),
          Expanded(
            child: articleState.when(
              data: (articles) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListView.builder(
                  itemCount: articles.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          AutoRouter.of(context);
                          context.router.push( ArticleDetailRoute(articleView: articles[index]));
                        },
                        child: ArticleView(
                          title: articles[index].title,
                          date: articles[index].date.publishedAt,
                          image: articles[index].images.image,
                          description:articles[index].elem.description,
                        ));
                  },
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
