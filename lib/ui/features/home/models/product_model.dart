// class AllProductModel {
//   List<ProductModel>? allProduct;
//
//   AllProductModel({this.allProduct});
//
//   AllProductModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       allProduct = <ProductModel>[];
//       json['data'].forEach((v) {
//         allProduct!.add(ProductModel.fromJson(v));
//       });
//     }
//   }
// }
//
// class ProductModel {
//   String? id;
//   String? name;
//   String? image;
//   String? releasedAt;
//   String? sizing;
//   int? initialPrice;
//   String? colorway;
//   String? sku;
//   String? createdAt;
//   String? updatedAt;
//   Brand? brand;
//
//   ProductModel(
//       {this.id,
//       this.name,
//       this.image,
//       this.releasedAt,
//       this.sizing,
//       this.initialPrice,
//       this.colorway,
//       this.sku,
//       this.createdAt,
//       this.updatedAt,
//       this.brand});
//
//   ProductModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     releasedAt = json['releasedAt'];
//     sizing = json['sizing'];
//     initialPrice = json['initialPrice'];
//     colorway = json['colorway'];
//     sku = json['sku'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
//   }
// }
//
// class Brand {
//   String? id;
//   String? name;
//
//   Brand({this.id, this.name});
//
//   Brand.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     return data;
//   }
// }
class AllProductModel {
  List<ProductModel>? data;

  AllProductModel({this.data});

  AllProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ProductModel>[];
      json['data'].forEach((v) {
        data!.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  String? id;
  String? name;
  String? image;
  String? releasedAt;
  String? sizing;
  int? initialPrice;
  String? colorway;
  String? sku;
  String? createdAt;
  String? updatedAt;
  Brand? brand;

  ProductModel(
      {this.id,
      this.name,
      this.image,
      this.releasedAt,
      this.sizing,
      this.initialPrice,
      this.colorway,
      this.sku,
      this.createdAt,
      this.updatedAt,
      this.brand});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    releasedAt = json['releasedAt'];
    sizing = json['sizing'];
    initialPrice = json['initialPrice'];
    colorway = json['colorway'];
    sku = json['sku'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
  }
}

class Brand {
  String? id;
  String? name;

  Brand({this.id, this.name});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
