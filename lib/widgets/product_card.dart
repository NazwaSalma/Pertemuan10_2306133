import 'package:flutter/material.dart';
import 'package:pertemuan10_2306133/models/product_model.dart';

class ProductCard extends StatelessWidget {
  //inisialisasi parameter variable
  final ProductModel product;
  final VoidCallback onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  //constructor
  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        onTap: () => onTap(),
        leading: IconButton(
          icon: const Icon(
            Icons.edit,
            color: Colors.orange,
          ),
          onPressed: () => onEdit!(),
        ),
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text("Rp ${product.price}"),
            const SizedBox(height: 5),
            Text(product.description),
          ],
        ),

        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () => onDelete!(),
        ),
      ),
    );
  }
}
