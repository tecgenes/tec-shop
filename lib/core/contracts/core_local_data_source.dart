import 'package:dartz/dartz.dart';

abstract class CoreLocalDataSource<CoreModel>{
  Future<List<CoreModel>> findAllCached();
  Future<Unit> cacheModel(List<CoreModel> models);
}