import 'package:flutter/cupertino.dart';

class ProductCard extends StatelessWidget {
  String name,image,price;
  ProductCard({required this.name,required this.image,required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 185,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(30, 0, 0, 0),
            offset: const Offset(
              0,
              0,
            ),
            blurRadius: 3,
            spreadRadius: 1,
          )
        ],
      ),
      child:Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Image.network(image,fit: BoxFit.scaleDown,height: 120,),
        Text(
        name,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
       Text(
        price,
        style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 5,)
      ],
      )
    );
  }
}
