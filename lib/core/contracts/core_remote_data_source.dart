import 'dart:convert';
import 'dart:core';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class CoreRemoteDataSource<CoreModel>{
  Future<List<CoreModel>> fetchAll();
  Future<CoreModel> fetchOne();
  Future<Unit> updateModel(CoreModel model);
  Future<Unit> create(CoreModel model);
  Future<Unit> delete(String id);
}