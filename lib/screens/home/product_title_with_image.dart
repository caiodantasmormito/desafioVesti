
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key ? key,
    @required this.product,
  }) : super(key: key);

   final Map<String, dynamic> ?  product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          
         
          Hero(
            tag: "${product?['id']}",
            child: CachedNetworkImage(
           imageUrl: product?['photo'] ?? "",
           width: double.infinity,
           height: 300,
          
           )
          )
        ],
      ),
    );
  }
}
