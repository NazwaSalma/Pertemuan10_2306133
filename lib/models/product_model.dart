import 'dart:convert';

class ProductModel {
  //inisialisasi variabel data
  final String name;
  final String description;
  final int price;
  final String image;

  //constructor
  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  //object -> map
  Map<String, dynamic> toMap() {
    return{
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  // map -> object
  factory ProductModel.fromMap(
    Map<String, dynamic>map,
  ){
    return ProductModel(
      name: map['name']?? '',
      description: map['description']?? '', 
      price: map['price']?? 0,
      image: map['image']?? '',
    );
  }

  //object -> JSON String
  String toJson() => jsonEncode(toMap());

  //JSON String -> object
  factory ProductModel.fromJson(String source){
    return ProductModel.fromMap(
      jsonDecode(source),
    );
  }
}