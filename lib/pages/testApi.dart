import 'package:flutter/material.dart';
import 'package:flutter_e_shop_with_api/model_class/getApiData.dart';

class TestProcuct extends StatefulWidget {
  const TestProcuct({Key? key}) : super(key: key);

  @override
  _TestProcuctState createState() => _TestProcuctState();
}

class _TestProcuctState extends State<TestProcuct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: FutureBuilder(
        future: GetApiData().getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, int position) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.red,
                    ),
                    child: Text(snapshot.data[position]["title"]),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

// Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                       height: 100,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(5),
//                           ),
//                           color: Colors.red),
//                       child: Text(snapshot.data[position]["title"].toString())),
//                 );
