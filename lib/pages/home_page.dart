import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  //membuat state
  @override
  State<HomePage> createState()=> _HomePageState();
  }
  // membuat class state
class _HomePageState extends State<HomePage>{
  //inisialisasi variable username
  String username = '';

  //membuat iniState()
  @override
  void initState() {
    super.initState();
    getUser();
  }
  //membuat method getUser()
  Future<void> getUser()async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? '';
    });
  }
  Future<void> logout()async{
    final prefs =await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  //widget builder
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  const Color(0xFFF5F6FA),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
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
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                    "https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I"
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hai, Selamat Datang!",
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            username,
                            style: TextStyle(
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
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: logout, 
                child: Icon(Icons.logout, size: 28, color: Colors.red)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
