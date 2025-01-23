import 'product_rating_model.dart';

class ProductModel {
  final String title;
  final num price;
  final String description;
  final String image;
  final Rating rating;

  ProductModel({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'rating': rating.toJson(),
    };
  }
}
