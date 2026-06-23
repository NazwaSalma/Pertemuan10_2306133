import 'dart:convert'; // <- Tambahkan baris ini
import 'package:flutter/material.dart';
import 'package:pertemuan10_2306133/models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pinkAccent,
         leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Rp ${product.price}"),
            const SizedBox(height: 10),
            Text(product.description),
            const SizedBox(height: 10), // Tambah sedikit jarak sebelum gambar
            product.image.isNotEmpty
                ? Image.memory(
                    base64Decode(product.image), // Sekarang ini tidak akan error lagi
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  )
                : const Icon(Icons.image, size: 120),
          ],
        ),
      ),
    );
  }
}