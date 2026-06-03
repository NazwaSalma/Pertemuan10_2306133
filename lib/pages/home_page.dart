import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';
import '../models/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  //membuat state
  @override
  State<HomePage> createState() => _HomePageState();
}

//membuat class state
class _HomePageState extends State<HomePage> {
  String username = '';

  //membuatvariabel utama untuk produk
  List<ProductModel> products = [];

  //membuat init state
  @override
  void initState() {
    super.initState();
    getUser();
    loadProducts();
  }

  //membuat method load produk untuk menampilkan data produk
  Future<void> loadProducts() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> productJsonList = prefs.getStringList('products') ?? [];
    setState(() {
      products = productJsonList
          .map((item) => ProductModel.fromJson(item))
          .toList();
    });
  }

  //membuat method untuk menyimpan produk
  Future<void> saveProduct() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> productList = products.map((item) => item.toJson()).toList();
    await prefs.setStringList('products', productList);
  }

  //membuat method untuk menambah produk
  Future<void> addProduct(ProductModel product) async {
    setState(() {
      products.add(product);
    });
    await saveProduct();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Produk berhasil ditambahkan!')),
    );
  }

  //membuat method untuk update produk
  Future<void> updateProduct(int index, ProductModel product) async {
  setState(() {
    products[index] = product;
  });
  await saveProduct();
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Produk berhasil diperbarui"),
    ),
  );
}

//membuat method untuk hapus produk
Future<void> deleteProduct(int index) async {
  setState(() {
    products.removeAt(index);
  });
  await saveProduct();
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Produk berhasil dihapus"),
    ),
  );
}

  //membuat method show dialog
  void showForm({ProductModel? product, int? index}) {
    TextEditingController nameController = TextEditingController(
      text: product?.name ?? '',
    );
    TextEditingController descriptionController = TextEditingController(
      text: product?.description ?? '',
    );
    TextEditingController priceController = TextEditingController(
      text: product?.price.toString() ?? '',
    );

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(product == null ? 'Tambah Produk' : 'Edit Produk'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama Produk'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Harga Produk'),
            ),
          ],
        ),
        actions:[
          ElevatedButton(
            onPressed:(){
              final newProduct = ProductModel(
                name: nameController.text,
                description: descriptionController.text,
                price: int.parse(priceController.text),
              );
            if (product == null) {
                addProduct(newProduct);
              } else {
                updateProduct(index!, newProduct);
              }
              Navigator.pop(context);
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }

  //membuat method get user
  Future<void> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? '';
    });
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        "https://picsum.photos/id/20/367/267",
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Menyeimbangkan posisi teks di tengah secara vertikal
                        children: [
                          Text(
                            "hallo, selamat datang!",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                username,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Icon(
                                Icons.verified,
                                color: Colors.green,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: logout,
                      style: ElevatedButton.styleFrom(
                        shape:
                            const CircleBorder(), // Membuat tombol logout berbentuk bulat agar lebih rapi
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Colors.grey[100],
                        elevation: 0,
                      ),
                      child: const Icon(
                        Icons.logout,
                        size: 24,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => showForm(),
                       child: const Text('Tambah Produk'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              Expanded(
                child: products.isEmpty
                    ? const Center(child: Text("belum ada produk"))
                    : ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(15),

                              leading: IconButton(
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.orange,
                                ),
                                onPressed: () => showForm(
                                  product: products[index],
                                  index: index,
                                ),
                              ),

                              title: Text(
                                product.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
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
                                onPressed: () => deleteProduct(index),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}