import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Animate_a_Widget_Across_Screens_Roq_Ex2());
}

class Animate_a_Widget_Across_Screens_Roq_Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFF5F7FA),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1A237E),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        cardTheme: CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: '🏠 Hero Animation App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({this.title = '🏠 Hero Animation App'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imagesVisible = true;
  var cardContent = [];

  @override
  void initState() {
    var ran = Random();
    var tag = 0;

    // Generate property data with reliable Picsum images
    for (var i = 0; i < 8; i++) { // Increased to 8 properties
      String heading = '\$${(ran.nextInt(20) + 15).toString()},000/month';
      var subheading =
          '${(ran.nextInt(3) + 1).toString()} bed • '
          '${(ran.nextInt(2) + 1).toString()} bath • '
          '${(ran.nextInt(10) + 7).toString()}00 sqft';

      // Use reliable Picsum photos instead of Unsplash
      var imageUrl = 'https://picsum.photos/id/${ran.nextInt(1000)}/800/600';

      var supportingText = _getPropertyDescription(ran);
      var cardData = {
        'heading': heading,
        'subheading': subheading,
        'imageUrl': imageUrl,
        'supportingText': supportingText,
        'tag': (tag++).toString(),
        'rating': (ran.nextDouble() * 2 + 3).toStringAsFixed(1), // 3.0-5.0
        'location': _getLocation(ran),
      };
      cardContent.add(cardData);
    }

    super.initState();
  }

  String _getPropertyDescription(Random ran) {
    List<String> descriptions = [
      'Beautiful modern home with panoramic views and luxurious amenities. Recently renovated with high-end finishes.',
      'Spacious family home in a quiet neighborhood. Features large backyard and updated kitchen with stainless appliances.',
      'Contemporary living with open floor plan and smart home features. Energy efficient with solar panels.',
      'Charming historic home with original details. Updated systems while maintaining classic character.',
      'Luxury penthouse with rooftop terrace. Floor-to-ceiling windows and premium finishes throughout.',
      'Cozy cottage with fireplace and garden. Perfect for those seeking a peaceful retreat.',
      'Modern loft in the heart of downtown. Exposed brick and industrial chic design elements.',
      'Waterfront property with private dock. Spectacular water views and beach access.',
    ];
    return descriptions[ran.nextInt(descriptions.length)];
  }

  String _getLocation(Random ran) {
    List<String> locations = [
      'Downtown',
      'Suburbs',
      'Waterfront',
      'Historic District',
      'Gated Community',
      'Urban Center',
      'Countryside',
      'Mountain View',
    ];
    return locations[ran.nextInt(locations.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        drawer: _buildDrawer(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              imagesVisible = !imagesVisible;
            });
          },
          icon: Icon(imagesVisible ? Icons.visibility_off : Icons.visibility),
          label: Text(imagesVisible ? 'Hide Images' : 'Show Images'),
          backgroundColor: Color(0xFF1A237E),
        ));
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1A237E),
              Color(0xFF283593),
              Color(0xFF3949AB),
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/id/1005/200/200',
                  ),
                ),
              ),
              accountEmail: Text(
                'ruqaih.salman@example.com',
                style: TextStyle(color: Colors.white70),
              ),
              accountName: Text(
                'Ruqaih Salman',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            _buildDrawerItem(
              icon: Icons.house,
              title: 'Houses',
              color: Colors.blue,
            ),
            _buildDrawerItem(
              icon: Icons.apartment,
              title: 'Apartments',
              color: Colors.green,
            ),
            _buildDrawerItem(
              icon: Icons.house_outlined,
              title: 'Townhomes',
              color: Colors.orange,
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.white30,
              indent: 20,
              endIndent: 20,
            ),
            _buildDrawerItem(
              icon: Icons.favorite,
              title: 'Favorites',
              color: Colors.red,
            ),
            _buildDrawerItem(
              icon: Icons.history,
              title: 'Recently Viewed',
              color: Colors.purple,
            ),
            _buildDrawerItem(
              icon: Icons.settings,
              title: 'Settings',
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: color),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Close drawer
        // In real app, you would navigate to the corresponding page
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.home, color: Colors.yellow),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '${cardContent.length} properties available',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Switch(
            value: imagesVisible,
            activeColor: Colors.yellow,
            inactiveThumbColor: Colors.grey,
            onChanged: (bool switchState) {
              setState(() {
                imagesVisible = switchState;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF5F7FA),
            Color(0xFFE8EAF6),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Featured Properties',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A237E),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
              ),
              itemCount: cardContent.length,
              itemBuilder: (context, index) {
                return _buildPropertyCard(cardContent[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPropertyCard(Map<String, dynamic> cardData) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      PropertyDetails(
                        cardData: cardData,
                      ),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (imagesVisible)
                  Container(
                    height: 180,
                    child: Stack(
                      children: [
                        Hero(
                          tag: cardData['tag'],
                          child: _buildPropertyImage(cardData['imageUrl']),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  cardData['rating'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              cardData['location'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardData['heading'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              cardData['subheading'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.message, size: 18),
                                label: Text('Contact'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1A237E),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyImage(String imageUrl) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 180,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          height: 180,
          color: Colors.grey.shade200,
          child: Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 180,
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 48, color: Colors.grey.shade500),
              SizedBox(height: 8),
              Text(
                'Property Image',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
        );
      },
    );
  }
}

class PropertyDetails extends StatelessWidget {
  final Map<String, dynamic> cardData;

  const PropertyDetails({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property Details'),
        backgroundColor: Color(0xFF1A237E),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Hero(
            tag: cardData['tag'],
            child: _buildDetailImage(cardData['imageUrl']),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cardData['heading'],
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A237E),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            cardData['subheading'],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.star, color: Colors.white),
                          Text(
                            cardData['rating'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    _buildFeatureIcon(Icons.hotel, '${cardData['subheading'].split('•')[0].trim()}'),
                    _buildFeatureIcon(Icons.bathtub, '${cardData['subheading'].split('•')[1].trim()}'),
                    _buildFeatureIcon(Icons.aspect_ratio, '${cardData['subheading'].split('•')[2].trim()}'),
                    _buildFeatureIcon(Icons.location_on, cardData['location']),
                  ],
                ),
                SizedBox(height: 32),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A237E),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  cardData['supportingText'],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Schedule a Tour',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1A237E),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text('Book Now'),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Color(0xFF1A237E)),
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text('Contact Agent'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: SafeArea(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.phone),
            label: Text('Call Agent: (555) 123-4567'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailImage(String imageUrl) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 400,
                color: Colors.grey.shade200,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 400,
                color: Colors.grey.shade300,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, size: 64, color: Colors.grey.shade500),
                      SizedBox(height: 16),
                      Text(
                        'Property Image',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.favorite_border),
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String text) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Color(0xFF1A237E)),
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}