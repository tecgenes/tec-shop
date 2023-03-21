import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:tec_shop/core/errors/exceptions.dart';
import 'package:tec_shop/features/home/data/models/product_model.dart';
import 'package:tec_shop/core/contracts/core_remote_data_source.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDataSourceHttpImplement implements CoreRemoteDataSource<ProductModel> {
  late final http.Client client;
  final String endpoint = "https://fakestoreapi.com/products";

  @override
  Future<List<ProductModel>> fetchAll() async{
    final response = await client.get(Uri.parse(endpoint));
    return _processHttpResponse(response);
  }

  @override
  Future<ProductModel> fetchOne() {
    // TODO: implement fetchOne
    throw UnimplementedError();
  }

  @override
  Future<Unit> create(ProductModel model) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Unit> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Unit> updateModel(ProductModel model) {
    // TODO: implement updateModel
    throw UnimplementedError();
  }

  _processHttpResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        final List responseJson = utf8.decode(response.bodyBytes) as List;
        final List<ProductModel> productModels = responseJson
            .map<ProductModel>((jsonProductModel) => ProductModel.fromJson(jsonProductModel))
            .toList();
        return productModels;
      case 201:
      case 400:
      case 401:
      case 403:
      case 500:
        default:
          throw ServerException();
    }
  }

}