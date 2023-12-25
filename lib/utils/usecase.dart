import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/utils/failures.dart';

abstract class UseCase<Type, Params> {
  ResultFuture<Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

// abstract class StreamUseCase<Type, Params> {
//   Stream<Type> call(Params params);
// }
