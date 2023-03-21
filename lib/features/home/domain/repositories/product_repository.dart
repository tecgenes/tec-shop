import 'package:dartz/dartz.dart';
import 'package:tec_shop/core/contracts/core_repository.dart';
import 'package:tec_shop/core/errors/failures.dart';

  class ProductRepository<ProductEntity> extends CoreRepository<ProductEntity>{

  @override
  Future<Either<Failure, Unit>> create(ProductEntity entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ProductEntity>> findOne(String id) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateModel(ProductEntity entity) {
    // TODO: implement updateModel
    throw UnimplementedError();
  }
}