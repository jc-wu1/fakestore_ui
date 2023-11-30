import 'dart:convert';

import 'package:equatable/equatable.dart';

class CartModel extends Equatable {
  final int? id;
  final int? userId;
  final DateTime? date;
  final List<Product>? products;
  final int? v;

  const CartModel({
    this.id,
    this.userId,
    this.date,
    this.products = const <Product>[],
    this.v,
  });

  factory CartModel.fromRawJson(String str) =>
      CartModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        userId: json["userId"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "date": date?.toIso8601String(),
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "__v": v,
      };

  @override
  List<Object?> get props => [products];
}

class Product extends Equatable {
  final int? productId;
  final int? quantity;

  const Product({
    this.productId,
    this.quantity,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["productId"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "quantity": quantity,
      };

  @override
  List<Object?> get props => [
        productId,
        quantity,
      ];
}
