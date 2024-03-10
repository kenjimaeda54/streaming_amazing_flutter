import 'package:dio/dio.dart';

final api = Dio(BaseOptions(
    baseUrl: 'https://www.googleapis.com/youtube/v3',
    connectTimeout: const Duration(minutes: 5),
    receiveTimeout: const Duration(minutes: 5),
    receiveDataWhenStatusError: true));
