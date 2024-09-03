import 'package:flutter/material.dart';
import 'package:tanaman_1/model/tanamanhias.dart';
import 'package:tanaman_1/TanamanHias/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State < HomeScreen > {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  int _selectedIndex = 0;
  int _likedPlantsCount = 0;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
      });
    });

    // Initialize the liked plants count
    _updateLikedPlantsCount();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to different screens based on the selected index
  }

  void _toggleLike(OrnamentalPlant plant) {
    setState(() {
      plant.isLiked = !plant.isLiked;
      plant.likeCount += plant.isLiked ? 1 : -1;
      _updateLikedPlantsCount();
    });
  }

  void _updateLikedPlantsCount() {
    setState(() {
      _likedPlantsCount = ornamentalPlants.where((plant) => plant.isLiked).length;
    });
  }

  @override
  Widget build(BuildContext context) {
    List < OrnamentalPlant > filteredPlants = ornamentalPlants.where((plant) {
      final lowerCaseQuery = _searchQuery.toLowerCase();
      return plant.name.toLowerCase().contains(lowerCaseQuery) ||
        plant.type.toLowerCase().contains(lowerCaseQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.dashboard, color: Colors.white, size: 40),
              onPressed: () {
                // Handle dashboard icon press
              },
            ),
            Spacer(),
            Text(
              'Leafy',
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            IconButton(
              icon: Stack(
                children: [
                  Icon(Icons.favorite, color: Colors.white, size: 40),
                  if (_likedPlantsCount > 0)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        constraints: BoxConstraints(
                          maxWidth: 24,
                        ),
                        child: Center(
                          child: Text(
                            '$_likedPlantsCount',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onPressed: () {
                // Handle love icon press
              },
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return MobileLayout(
              filteredPlants: filteredPlants,
              onToggleLike: _toggleLike,
            );
          } else if (constraints.maxWidth < 700) {
            // Web layout with 1 column
            return WebLayout(
              filteredPlants: filteredPlants,
              crossAxisCount: 1,
              onToggleLike: _toggleLike,
            );
          } else if (constraints.maxWidth < 800) {
            // Web layout with 2 columns
            return WebLayout(
              filteredPlants: filteredPlants,
              crossAxisCount: 2,
              onToggleLike: _toggleLike,
            );
          } else if (constraints.maxWidth < 900) {
            // Web layout with 3 columns
            return WebLayout(
              filteredPlants: filteredPlants,
              crossAxisCount: 3,
              onToggleLike: _toggleLike,
            );
          } else {
            // Web layout with 4 columns
            return WebLayout(
              filteredPlants: filteredPlants,
              crossAxisCount: 5,
              onToggleLike: _toggleLike,
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[500],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  final List < OrnamentalPlant > filteredPlants;
  final Function(OrnamentalPlant) onToggleLike;

  MobileLayout({
    required this.filteredPlants,
    required this.onToggleLike
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: filteredPlants.length,
      itemBuilder: (context, index) {
        final plant = filteredPlants[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(plant: plant),
              ),
            );
          },
          child: PlantCard(plant: plant, onToggleLike: onToggleLike),
        );
      },
    );
  }
}

class WebLayout extends StatelessWidget {
  final List < OrnamentalPlant > filteredPlants;
  final int crossAxisCount;
  final Function(OrnamentalPlant) onToggleLike;

  WebLayout({
    required this.filteredPlants,
    required this.crossAxisCount,
    required this.onToggleLike
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: filteredPlants.length,
      itemBuilder: (context, index) {
        final plant = filteredPlants[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(plant: plant),
              ),
            );
          },
          child: PlantCard(plant: plant, onToggleLike: onToggleLike),
        );
      },
    );
  }
}

class PlantCard extends StatelessWidget {
  final OrnamentalPlant plant;
  final Function(OrnamentalPlant) onToggleLike;

  PlantCard({
    required this.plant,
    required this.onToggleLike
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Container(
          margin: EdgeInsets.all(10), // Margin di sekitar kartu
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.green.withOpacity(0.6), Colors.green.withOpacity(0.3)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                blurRadius: 12,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              // Image background
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  plant.imageAsset,
                  fit: BoxFit.cover, // Ensure the image covers the container
                  width: double.infinity,
                  height: isMobile ? 150 : double.infinity, // Adjust height for mobile
                  color: Colors.black.withOpacity(0.4),
                  colorBlendMode: BlendMode.darken,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Text('Image not available'));
                  },
                ),
              ),
              // Overlay with text and like button
              Positioned.fill(
                child: Column(
                  children: [
                    // Title and type of the plant
                    Padding(
                      padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                plant.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontFamily: 'ProductSans',
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Text(
                                    plant.type,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontFamily: 'ProductSans',
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                    Spacer(), // Push the like button to the bottom
                    Padding(
                      padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: Icon(
                              plant.isLiked ? Icons.favorite : Icons.favorite_border,
                              color: plant.isLiked ? Colors.red : Colors.white,
                            ),
                            onPressed: () => onToggleLike(plant),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}