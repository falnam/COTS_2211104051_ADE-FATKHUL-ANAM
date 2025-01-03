import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0; // Indeks tab yang aktif

  // Daftar halaman untuk setiap tab
  final List<Widget> _pages = [
    HomePage(), // Halaman Home
    OrdersPage(), // Halaman Orders
    InboxPage(), // Halaman Inbox
    AccountPage(), // Halaman Account
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex], // Menampilkan halaman sesuai dengan tab yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Menandakan tab yang dipilih
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah halaman saat tab dipilih
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Find services, food, or places', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // GoPay Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('gopay', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Rp7.434'),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Layanan Gojek (Icons)
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildServiceIcon('assets/goride.png', 'GoRide'),
                  _buildServiceIcon('assets/gocar.png', 'GoCar'),
                  _buildServiceIcon('assets/gofood.png', 'GoFood'),
                ],
              ),
              SizedBox(height: 16),

              // XP and Promo Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('121 XP to your next treasure >'),
              ),
              SizedBox(height: 16),

              // Restos near me and Best-seller
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Restos near me', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Best-seller in my area', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 16),

              // Promo Cards
              _buildPromoCard('assets/promo1.png', 'Makin Seru', 'Aktifkan & Sambungkan GoPay & GoPaylater di Tokopedia'),
              SizedBox(height: 16),
              _buildPromoCard('assets/promo2.png', 'Makin Seru', 'Sambungin Akun ke Tokopedia, Banyakin Untung'),
              SizedBox(height: 16),
              _buildPromoCard('assets/promo3.png', 'Makin Seru', 'Promo Belanja Online 10.10: Cashback hingga Rp100.000'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceIcon(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, height: 40),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildPromoCard(String imagePath, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Orders Page'));
  }
}

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Inbox Page'));
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Account Page'));
}
}
