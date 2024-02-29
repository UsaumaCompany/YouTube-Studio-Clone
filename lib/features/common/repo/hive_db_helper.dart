import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hale_farm/features/goods/data/hive/org_product_hive.dart';
// import 'package:hale_farm/features/goods/data/model/org_product_model.dart';

class HiveDBHelper {
  static Future<void> init() async {
    // Initialize Hive with the provided directory

    await Hive.initFlutter();

    // Register Hive adapters here
    // Hive.registerAdapter<OrgProductModel>(OrgProductAdapter());
  }

  static Future<Box<T>> openBox<T>(String boxName) async {
    return await Hive.openBox<T>(boxName);
  }
}
