import 'package:flutter/foundation.dart';

import 'package:providerapp/models/testapi_model.dart';

class HomepageProvider extends ChangeNotifier{
  List<ApiTestmodel> listData = [];
  void updateDataModel(List<ApiTestmodel> listData){
    this.listData = listData;
    notifyListeners();
  }
}