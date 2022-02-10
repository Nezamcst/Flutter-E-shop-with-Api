import 'package:flutter/material.dart';
import 'package:flutter_e_shop_with_api/pages/detailsPage.dart';

ProductListWidget(
    String Price,
    String dolarSine,
    var FavIcon,
    var imagePro,
    String count,
    String titlePro,
    String rating,
    String rate,
    var ratingIcon,
    BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetails(
            ProductImage: imagePro,
            ProductName: titlePro,
          ),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 210,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(dolarSine),
                      Text(Price),
                    ],
                  ),
                  Row(
                    children: [
                      Text(count),
                      Icon(
                        FavIcon,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 80,
                      child: Image.network(
                        imagePro,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(titlePro),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(rate),
                  Icon(
                    ratingIcon,
                    color: Colors.red,
                  ),
                ],
              ),

              // CircleAvatar(
              //   radius: 30,
              //   backgroundColor: Colors.transparent,
              //   backgroundImage: NetworkImage(imagePro),
              // )
            ],
          ),
        ),
      ),
    ),
  );
}

// String IconFav, String ImagePro, String NamePro,