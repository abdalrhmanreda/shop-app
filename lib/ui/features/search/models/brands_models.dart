import 'package:shoes/ui/features/home/models/product_model.dart';

class AllBrandsModel {
  List<ProductModel>? nike;
  List<ProductModel>? yeezy;
  List<ProductModel>? converse;
  List<ProductModel>? jordan;
  List<ProductModel>? puma;
  List<ProductModel>? vans;
  List<ProductModel>? crocs;
  List<ProductModel>? adidas;
  List<ProductModel>? supreme;

  AllBrandsModel(
      {this.nike,
      this.yeezy,
      this.converse,
      this.jordan,
      this.puma,
      this.vans,
      this.crocs,
      this.adidas,
      this.supreme});

  AllBrandsModel.fromJson(Map<String, dynamic> json) {
    if (json['Nike'] != null) {
      nike = <ProductModel>[];
      json['Nike'].forEach((v) {
        nike!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Yeezy'] != null) {
      yeezy = <ProductModel>[];
      json['Yeezy'].forEach((v) {
        yeezy!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Converse'] != null) {
      converse = <ProductModel>[];
      json['Converse'].forEach((v) {
        converse!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Jordan'] != null) {
      jordan = <ProductModel>[];
      json['Jordan'].forEach((v) {
        jordan!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Puma'] != null) {
      puma = <ProductModel>[];
      json['Puma'].forEach((v) {
        puma!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Vans'] != null) {
      vans = <ProductModel>[];
      json['Vans'].forEach((v) {
        vans!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Crocs'] != null) {
      crocs = <ProductModel>[];
      json['Crocs'].forEach((v) {
        crocs!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Adidas'] != null) {
      adidas = <ProductModel>[];
      json['Adidas'].forEach((v) {
        adidas!.add(ProductModel.fromJson(v));
      });
    }
    if (json['Supreme'] != null) {
      supreme = <ProductModel>[];
      json['Supreme'].forEach((v) {
        supreme!.add(ProductModel.fromJson(v));
      });
    }
  }
}
