import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.saleText, this.accuCheckActive, this.priceText, this.ratingText1, this.ratingText2, this.id, }) { saleText = saleText  ?? "SALE";accuCheckActive = accuCheckActive  ?? "Accu-check Active\nTest Strip";priceText = priceText  ?? "Rs.112";ratingText1 = ratingText1  ?? "4.2";ratingText2 = ratingText2  ?? "4.2";id = id  ?? ""; }

String? saleText;

String? accuCheckActive;

String? priceText;

String? ratingText1;

String? ratingText2;

String? id;

 }
