import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.productImage, this.productName, this.productImage1, this.categoryName, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage387x87;productName = productName  ?? "Nutritional Drinks";productImage1 = productImage1  ?? ImageConstant.imgImage4;categoryName = categoryName  ?? "Ayurveda";id = id  ?? ""; }

String? productImage;

String? productName;

String? productImage1;

String? categoryName;

String? id;

 }
