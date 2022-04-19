import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/helper/helper_pro.dart';
import 'package:providerapp/models/testapi_model.dart';
import 'package:providerapp/provider/apitestpro.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomepageProvider>(
      builder: (context, provider, child){
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: ()async{
              List<ApiTestmodel> data = await FetchData().getData();
              provider.updateDataModel(data);
            },
          ),
          body: provider.listData.isEmpty?const Center(child:Text("There is no data, Try refreshing")):
          ListView.builder(
            itemCount: provider.listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${provider.listData[index].id}"),
                title: Text("${provider.listData[index].title}"),
              );
            },
          ),

        );
      },
    );
  }
}