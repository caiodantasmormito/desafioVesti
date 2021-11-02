import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    @required this.product,
  }) : super(key: key);

  final Map<String, dynamic>? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Size"),
         Wrap(
           spacing: 10,
           children: [

              Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10, bottom: 10),
            decoration: myBoxDecoration(), 
            child: Text(
           "S",
            ),),

            Container(
            margin: const EdgeInsets.only(top: 8.0,),
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 16),
            decoration: myBoxDecorationCircle(), 
            child: Text(
           "M",
            ),),


            Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10, bottom: 10),
            decoration: myBoxDecoration(), 
            child: Text(
           "L",
            ),),


            Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10, bottom: 10),
            decoration: myBoxDecoration(), 
            child: Text(
           "XL",
            ),),
           ],
         ),
         SizedBox(height: 16,),
          Text("Um produto de ótima qualidade, desenvolvido para melhorar a sua experiência como usuário."),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                height: 50,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.blueGrey,
                  ),
                ),
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/add_to_cart.svg",
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    color: Colors.blueGrey,
                    onPressed: () {},
                    child: Text(
                      "Comprar agora".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration myBoxDecorationCircle() {
  return BoxDecoration(
    
    border: Border.all(
      
      color: Colors.black
    ),
    borderRadius: BorderRadius.all(Radius.circular(30))
  );
}

  BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    
    border: Border.all(
      color: Colors.grey.withAlpha(400)
    ),
  );
}
}
