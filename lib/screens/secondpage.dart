import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/dataprovider.dart';
import 'package:providerapp/screens/fastpage.dart';

class Secondpage extends StatelessWidget {
 Secondpage({Key? key,
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text((providerData.value.toString())),
          ElevatedButton(onPressed: (){
            providerData.decrement();
          }, child: Text("decrement")
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()
            ));
          }, child: Text("go to home page"))
        ],
      ),
    );
  }
}
