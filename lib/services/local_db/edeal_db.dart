import 'dart:convert';

import 'package:app/services/local_db/local_db.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EDealDb {
  static final SharedPreferences _pref = Db.pref;

  void setDealId(int id) => _pref.setInt("dealId", id);
  int getDealId() => _pref.getInt("dealId") ?? 0;

  void setDealData(Map<String, dynamic> data) =>
      _pref.setString("add_deal", jsonEncode(data));
  Map<String, dynamic>? getDealData() {
    String? data = _pref.getString("add_deal");
    if (data == null) {
      return null;
    } else {
      return jsonDecode(data);
    }
  }
}
