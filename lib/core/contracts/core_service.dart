import 'package:get/get.dart';
import 'package:tec_shop/core/contracts/core_model.dart';
import 'package:tec_shop/core/util/dto.dart';
import 'package:tec_shop/core/util/filter.dart';

abstract class CoreService<T> extends GetxService{
  Future<T?> create({required DTO dto});
  Future<T?> updateModel({required CoreModel model});
  Future<void> delete({required int id});
  Future<List<T>?> findAll({int? page, List<Filter>? filters});
  Future<T?> findOne({required String id});
}