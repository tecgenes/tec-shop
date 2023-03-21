import 'package:tec_shop/features/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {required super.id,
      required super.title,
      required super.description,
      required super.category,
      required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'title' : title,
      'description' : description,
      'category' : category,
      'image' : image,
    };
  }
}
