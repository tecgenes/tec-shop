import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable{
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;

  const ProductEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.image});

  @override
  List<Object?> get props => [id, title, description, category, image];
}
