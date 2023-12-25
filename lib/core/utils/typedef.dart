


import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

typedef DataMap = Map<String, dynamic>;

typedef ResultFuture<T> = Future<Either<DioException, T>>;