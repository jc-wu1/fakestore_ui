import 'dart:convert';

import 'package:fakestore_ui/src/features/cart/data/model/cart_model.dart';
import 'package:http/http.dart' as http;

abstract class CartsRemoteDataSource {
  Future<CartModel> getCart();
}

class CartsRemoteDataSourceImpl implements CartsRemoteDataSource {
  final http.Client client;

  CartsRemoteDataSourceImpl(this.client);

  @override
  Future<CartModel> getCart() async {
    final response = await client.get(
      Uri.parse('https://fakestoreapi.com/carts/1'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return CartModel.fromJson(json.decode(response.body));
    } else {
      throw Exception();
    }
  }
}
