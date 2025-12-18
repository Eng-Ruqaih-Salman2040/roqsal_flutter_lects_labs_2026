import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveScaffold_Roq());
}

class AdaptiveScaffold_Roq extends StatelessWidget {
  const AdaptiveScaffold_Roq({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AdaptiveScaffold_HomePage());
  }
}

class AdaptiveScaffold_HomePage extends StatefulWidget {
  const AdaptiveScaffold_HomePage({super.key});

  @override
  State<AdaptiveScaffold_HomePage> createState() => _AdaptiveScaffold_HomePageState();
}

class _AdaptiveScaffold_HomePageState extends State<AdaptiveScaffold_HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    PlaceholderPage(title: 'Inbox'),
    PlaceholderPage(title: 'Articles'),
    PlaceholderPage(title: 'Chat'),
    PlaceholderPage(title: 'Video'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 700;
    final isMediumScreen = screenWidth >= 700 && screenWidth < 1000;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Demo'),
      ),
      body: Row(
        children: [
          // Sidebar for medium and large screens
          if (!isSmallScreen)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.inbox),
                  label: Text('Inbox'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.article),
                  label: Text('Articles'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.chat),
                  label: Text('Chat'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.video_call),
                  label: Text('Video'),
                ),
              ],
            ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
          // Secondary body for large screens
          if (screenWidth >= 1000)
            Container(
              width: 300,
              color: const Color.fromARGB(255, 234, 158, 192),
              child: const Center(
                child: Text('Secondary Body'),
              ),
            ),
        ],
      ),
      // Bottom navigation for small screens
      bottomNavigationBar: isSmallScreen
          ? BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Video',
          ),
        ],
      )
          : null,
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final String title;

  const PlaceholderPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 700 ? 1 : screenWidth < 1000 ? 2 : 3;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: const Color.fromARGB(255, 255, 201, 197),
                child: Center(
                  child: Text('Item $index'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}