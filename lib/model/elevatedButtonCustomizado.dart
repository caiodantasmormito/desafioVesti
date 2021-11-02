import 'package:flutter/material.dart';

class ElevatedButtonCustomizado extends StatefulWidget {
  ElevatedButtonCustomizado(
      {@required this.callback,
      @required this.isEnabled,
      @required this.text});

  final VoidCallback  ? callback;
  final bool ?isEnabled;
  final String ? text;

  @override
  ElevatedButtonCustomizadoState createState() {
    return new ElevatedButtonCustomizadoState();
  }
}

class ElevatedButtonCustomizadoState extends State<ElevatedButtonCustomizado> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37.5, right: 37.5),
      child: Container(
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(
                      widget.isEnabled! ?Colors.blueGrey : Color.fromRGBO(229, 229, 234, 1),),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                 
                ))),
            onPressed: widget.callback,
            child: Center(
                child: Text(widget.text!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: widget.isEnabled! ? Color.fromRGBO(255, 255, 255, 1) : Color.fromRGBO(186, 186, 186, 1),
                    )))),
      ),
    );
  }
}
