import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/article_type.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://mocki.io/v1")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/dbb3e648-358f-4a53-88fb-6dd9a67d4137")
  Future<List<ArticleType>> getArticles();
}
