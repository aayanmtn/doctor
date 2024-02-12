import '../../../core/app_export.dart';/// This class is used in the [cartitem1_item_widget] screen.
class Cartitem1ItemModel {Cartitem1ItemModel({this.image, this.title, this.description, this.price, this.quantity, this.id, }) { image = image  ?? ImageConstant.imgImage134;title = title  ?? "Sugar free gold";description = description  ?? "bottle of 500 pellets";price = price  ?? "Rs.25";quantity = quantity  ?? "1";id = id  ?? ""; }

String? image;

String? title;

String? description;

String? price;

String? quantity;

String? id;

 }
