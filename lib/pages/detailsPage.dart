import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails(
      {Key? key, required this.ProductImage, required this.ProductName})
      : super(key: key);
  var ProductImage;
  String ProductName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    child: Image.network(
                      ProductImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(ProductName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
