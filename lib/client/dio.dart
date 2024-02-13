import 'package:dio/dio.dart';

final api = Dio(BaseOptions(
    baseUrl: 'https://www.googleapis.com/youtube/v3',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5)));
