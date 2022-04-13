import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/dataprovider.dart';
import 'package:providerapp/screens/secondpage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("this is test app"),
      ),
      body: Column(
        children: [
          Text(providerData.value.toString()),
          ElevatedButton(onPressed: (){
            providerData.incriment();
          },
              child: Text("tap tp upgrage value")),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondpage()
            ));
          }, child:Text("Go to next page for diccrement") )
        ],
      ),
    );
  }
}
