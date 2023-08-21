import 'package:flutter/material.dart';

class CartRollFl extends StatefulWidget {
  const CartRollFl({super.key});

  @override
  State<CartRollFl> createState() => _CartRollFlState();
}

class _CartRollFlState extends State<CartRollFl> {
  List<String> _products = ['Computer', 'Socket', 'Fan', 'Bed'];
  List<String> _cart = [];

  void _addToCart(String item) {
    setState(() {
      _cart.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final products = _products[index];
          final cart = _cart.contains(products);

          return ListTile(
              title: Text(products),
              trailing: cart
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : IconButton(
                      onPressed: () {
                        _addToCart(products);
                      },
                      icon: Icon(Icons.add_circle)));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Cart Items'),
                content: _cart.isEmpty ? Text('Cart is Empty')
                         : Column(

                          mainAxisSize: MainAxisSize.min,
                          children: 
                            _cart.map((products) => Text(products))
                            .toList(),
                                                    
                         ),
                actions: [
                  TextButton(onPressed: () => {Navigator.pop(context)} , child:Text('close') )
                ],
              );
            });

            
      },
      child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
