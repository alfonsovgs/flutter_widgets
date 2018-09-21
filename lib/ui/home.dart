import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            color: Colors.deepOrange,
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        "Margherita",
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 30.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    new Expanded(
                      child: new Text(
                        "Tomato, Mozzarella, Basil",
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        "Marinara",
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 30.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    new Expanded(
                      child: new Text(
                        "Tomato, Garlic",
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            fontFamily: 'Oxygen',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                PizzaImageWidget(),
                OrderButton(),
              ],
            )
        )
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = new Image(image: pizzaAsset, width: 400.0, height: 400.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = new Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: new Text("Order you pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );

    return button;
  }

  void order(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('Order completed'),
      content: Text('Thaks for you order'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
    );
  }

}
