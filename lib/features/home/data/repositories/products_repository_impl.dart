import 'package:dartz/dartz.dart';
import 'package:get/get_instance/src/lifecycle.dart';
import 'package:tec_shop/core/errors/exceptions.dart';
import 'package:tec_shop/features/home/data/datasource/local/product_local_datasoure_sqflite_implement.dart';
import 'package:tec_shop/features/home/data/datasource/remote/product_remote_datasource_http_implement.dart';
import 'package:tec_shop/features/home/domain/entities/product_entity.dart';
import 'package:tec_shop/features/home/domain/repositories/product_repository.dart';
import 'package:tec_shop/core/errors/failures.dart';
import 'package:tec_shop/core/util/app_connectivity.dart';

class ProductsRepositoryImplement implements ProductRepository<ProductEntity>{

  ProductLocalDataSourceSqfLiteImplement localDataSource = ProductLocalDataSourceSqfLiteImplement();
  AppConnectivity network = AppConnectivity();
  ProductRemoteDataSourceHttpImplement remoteDataSource = ProductRemoteDataSourceHttpImplement();


  @override
  Future<Either<Failure, List<ProductEntity>>> findAll() async{
    if(await network.getConnection() == true){
      try{
        final remoteProducts = await remoteDataSource.fetchAll();
        localDataSource.cacheModel(remoteProducts);
        return Right(remoteProducts);
      } on ServerException{
        return Left(ServerFailure());
      }
    }else{
      try{
        final localProducts = await localDataSource.findAllCached();
        return Right(localProducts);
      } on EmptyCacheException{
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, ProductEntity>> findOne(String id) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> create(entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateModel(entity) {
    // TODO: implement updateModel
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  void $configureLifeCycle() {
    // TODO: implement $configureLifeCycle
  }

  @override
  // TODO: implement initialized
  bool get initialized => throw UnimplementedError();

  @override
  // TODO: implement isClosed
  bool get isClosed => throw UnimplementedError();

  @override
  void onClose() {
    // TODO: implement onClose
  }

  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => throw UnimplementedError();

  @override
  void onInit() {
    // TODO: implement onInit
  }

  @override
  void onReady() {
    // TODO: implement onReady
  }

  @override
  // TODO: implement onStart
  InternalFinalCallback<void> get onStart => throw UnimplementedError();

}