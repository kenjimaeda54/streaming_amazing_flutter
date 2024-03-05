import 'package:dio/dio.dart';

final api = Dio(BaseOptions(
    baseUrl: 'https://www.googleapis.com/youtube/v3',
    connectTimeout: const Duration(minutes: 3),
    receiveTimeout: const Duration(minutes: 3),
    receiveDataWhenStatusError: true));
