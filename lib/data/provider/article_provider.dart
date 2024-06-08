import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/article_type.dart';
import '../remote/dio_client.dart';

final articleProvider = StateNotifierProvider<ArticleNotifier, AsyncValue<List<ArticleType>>>(
      (ref) => ArticleNotifier(),
);

class ArticleNotifier extends StateNotifier<AsyncValue<List<ArticleType>>> {
  ArticleNotifier() : super(const AsyncValue.loading()) {
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      final articles = await DioClient().apiService.getArticles();
      state = AsyncValue.data(articles);
    } catch (e) {
      state = AsyncValue.error(e,StackTrace.current);
    }
  }
}
