import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.bpMonitorName, this.bpMonitorPrice, this.discountText, this.id, }) { bpMonitorName = bpMonitorName  ?? "Omron HEM-8712 \nBP Monitor";bpMonitorPrice = bpMonitorPrice  ?? "Rs.150";discountText = discountText  ?? "15% OFF";id = id  ?? ""; }

String? bpMonitorName;

String? bpMonitorPrice;

String? discountText;

String? id;

 }
