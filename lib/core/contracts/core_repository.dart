import 'package:get/get.dart';
import 'package:tec_shop/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class CoreRepository<T> extends GetxService{
  Future<Either<Failure,Unit>> create(T entity);
  Future<Either<Failure,Unit>> updateModel(T entity);
  Future<Either<Failure,Unit>> delete( String id);
  Future<Either<Failure,List<T>>>  findAll();
  Future<Either<Failure,T>>findOne(String id);
}