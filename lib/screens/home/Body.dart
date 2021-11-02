
import 'package:appdesafio/screens/home/add_to_cart.dart';
import 'package:appdesafio/screens/home/color_size.dart';
import 'package:appdesafio/screens/home/counter_fav.dart';
import 'package:appdesafio/screens/home/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Body extends StatelessWidget {
   final Map<String, dynamic>  ? product;

  const Body({Key ? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:kToolbarHeight),
        child: Column(
          
          children: <Widget>[
            
            Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.dehaze_outlined,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "CASA",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cart(2)",
                        ),
                      ],
                    ),
                  ),


              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back)),
                ),
              ),    
            
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 16,
                      right: 16,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        CounterWithFavBtn(),
                        SizedBox(height: 10),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
