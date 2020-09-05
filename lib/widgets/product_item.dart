import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageURL;

  ProductItem(this.id, this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(imageURL, fit: BoxFit.cover),
        footer: GridTileBar(
            backgroundColor: Colors.black45,
            leading: IconButton(icon: Icon(Icons.favorite),
            onPressed: (){},
                color: Theme.of(context).accentColor,),
            trailing: IconButton(icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,),
            title: Text(title, textAlign: TextAlign.center)),
      ),
    );
  }
}
