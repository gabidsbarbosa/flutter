import 'package:flutter/material.dart';
import 'purchase_details_screen.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            _buildProductTile(context, 'Produto 1'),
            _buildProductTile(context, 'Produto 2'),
            _buildProductTile(context, 'Produto 3'),
          ],
        ),
      ),
    );
  }

  Widget _buildProductTile(BuildContext context, String productName) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.shopping_bag, color: Colors.blueAccent),
        title: Text(productName, style: TextStyle(fontSize: 18)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PurchaseDetailsScreen(
                productName: productName,
              ),
            ),
          );
        },
      ),
    );
  }
}
