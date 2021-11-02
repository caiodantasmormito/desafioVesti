
import 'package:appdesafio/controllers/ControladorApi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';



class ItemCard extends StatefulWidget {
  final Map<String, dynamic> ? product;
  final VoidCallback ? press;
  final int ? indexRecebido;
  const ItemCard({
    this.product,
    this.indexRecebido,
    Key ? key,
    this.press,
  }) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  final controladorApi = GetIt.I.get<ControladorApi>();
  bool achou = false;

  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          
          
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${ controladorApi.auxiliar![widget.indexRecebido!]?["id"]} ?? '' ",
               child: CachedNetworkImage(
                 imageUrl:controladorApi.auxiliar![widget.indexRecebido!]['photo'] ?? ""
               )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16 / 4),
            child: Text(
              controladorApi.auxiliar![widget.indexRecebido!]["name"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "€${controladorApi.auxiliar![widget.indexRecebido!]['price']}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )  
    );
  }
}
