import 'package:flutter/material.dart';
import 'package:untitled1/Widgets/CardWidget.dart';
import 'entities/Film.dart';

class GStore extends StatefulWidget {
  const GStore({super.key});

  @override
  State<GStore> createState() => _GStoreState();
}

class _GStoreState extends State<GStore> {
  final List<Film> films = [
    Film(
      title: "House Of Dead",
      description: "A thrilling horror film.",
      price: 15,
      image: "HouseOfDead.jpg",
    ),
    Film(
      title: "Ice Road",
      description: "An action-packed adventure.",
      price: 20,
      image: "iceroad.jpg",
    ),
    Film(
      title: "The Abyss",
      description: "A deep-sea exploration movie.",
      price: 18,
      image: "theabyss.jpg",
    ),
    Film(
      title: "The Grudge",
      description: "A spine-chilling horror story.",
      price: 12,
      image: "thegrudge.jpg",
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text("G-STORE", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Image.asset("assets/images/movie.png", width: 200, height: 200),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile Settings"),
              onTap: () {
                Navigator.pushNamed(context, '/profileSettings');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
              onTap: () {
                Navigator.pushNamed(context, '/signIn');
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text("Go to Nav Bar"),
              onTap: () {
                Navigator.pushNamed(context, '/gstore');
              },
            ),
          ],
        ),
      ),
      body: _getCurrentScreen(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _getCurrentScreen() {
    switch (_currentIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return _buildProfileScreen();
      case 2:
        return _buildSettingsScreen();
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return ListView.builder(
      itemCount: films.length,
      itemBuilder: (context, index) {
        return CardWidget(
          image: films[index].image,
          title: films[index].title,
        );
      },
    );
  }

  Widget _buildProfileScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            "Profile Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profileSettings');
            },
            child: Text("Go to Profile Settings"),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            "Settings Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "App configuration and preferences",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Store',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books_sharp),
          label: 'Bibliotheque',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Basket',
        ),
      ],
    );
  }
}