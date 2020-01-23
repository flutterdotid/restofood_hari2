import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restofood/model/food.dart';

class Detail extends StatelessWidget {
  
  final Food listFood;
  const Detail({Key key, this.listFood}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          listFood.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.fastfood),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    "images/${listFood.image}",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                new Positioned(
                  bottom: 20,
                  right: 15,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          listFood.name,
                          style: TextStyle(fontSize: 26, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          "Harga : Rp ${listFood.price}",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )
                      ],
                    ),
                  ),
                ),
                new SizedBox(
                  height: 4,
                ),
              ],
            ),
            new Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.assessment,
                          size: 20,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: new Text(
                              "Description",
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: new Text(
                      listFood.fullDescription,
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
