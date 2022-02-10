import 'package:flutter/material.dart';
import 'package:flutter_e_shop_with_api/model_class/checkProduct.dart';
import 'package:flutter_e_shop_with_api/model_class/getApiData.dart';
import 'package:flutter_e_shop_with_api/widgets/productListWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 230, 243),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              //height: 1500,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.menu),
                        CircleAvatar(radius: 15, child: Icon(Icons.person)),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '  Search Your Product',
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(onTap: () {}, child: Text('Nike')),
                        InkWell(onTap: () {}, child: Text('Adidas')),
                        Text('puma'),
                        Text('Baienciage'),
                        Text('converse')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FutureBuilder(
                      future: GetApiData().getData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.transparent,
                              ),
                              height: 400,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, position) {
                                  return ProductListWidget(
                                    snapshot.data[position]["price"].toString(),
                                    context,
                                  );
                                },
                              ),
                            ),
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
