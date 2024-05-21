import 'package:json_annotation/json_annotation.dart';
part 'products.g.dart';

@JsonSerializable()
class Products {
  int id;
  String title;
  int price;
  String thumbnail;
  Products({
    required this.id,
    required this.price,
    required this.thumbnail,
    required this.title,
  });
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
  // Products.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   title = json['title'];
  //   price = json['price'];
  //   thumbnail = json['thumbnail'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['price'] = this.price;
  //   data['thumbnail'] = this.thumbnail;
  //   return data;
  // }
}
