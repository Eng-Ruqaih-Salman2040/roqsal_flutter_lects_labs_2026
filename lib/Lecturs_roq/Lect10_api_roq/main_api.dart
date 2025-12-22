import 'package:flutter/material.dart';

import 'API_Roq_Ex1/Model_roq/Post_one_model_roq.dart';
import 'API_Roq_Ex1/Services_roq/Postservice_multidata_roq.dart';
import 'API_Roq_Ex1/Services_roq/Postservice_one_data_roq.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Delete_data_on_the_internet_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Fetch_data_from_the_JSON_assest_file_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Fetch_data_from_the_internet_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Make_authenticated_requests_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Parse_JSON_in_the_background_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Send_data_to_the_internet_Roq_ex.dart';
import 'API_Roq_Ex2/Networking_OPrations_Roq/Update_data_over_the_internet_Roq_ex.dart';
import 'JSON_File_in_assest/load_data_fromJSON_assest_roq.dart';

void main() {
  runApp(
      Main_API_All_Roq()

  );
}

class Main_API_All_Roq extends StatelessWidget {
  const Main_API_All_Roq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: API_Roq_EX(),
      theme: ThemeData(
        primaryColor: Color(0xFF1A237E),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.orange,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class API_Roq_EX extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<API_Roq_EX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API Roq APP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 8,
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF5F7FF),
              Color(0xFFE3F2FD),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Section 1: API in Asset
                _buildSectionHeader(
                  title: "📁 API JSON File in Asset",
                  subtitle: "Local JSON Data Operations",
                  icon: Icons.folder,
                ),
                SizedBox(height: 12),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.storage, color: Colors.blue, size: 32),
                    title: Text(
                      'Fetch Data from JSON File in Asset',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text('Read local JSON files from assets'),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Read_Local_JSON_Roq()),
                      );
                    },
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(height: 32),

                // Section 2: API Post Operations
                _buildSectionHeader(
                  title: "🌐 API Post Operations",
                  subtitle: "By Ruqaih Salman",
                  icon: Icons.cloud,
                ),
                SizedBox(height: 12),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _buildOperationCard(
                      title: "Fetch Single Post",
                      subtitle: "Get one data record from API",
                      icon: Icons.get_app,
                      color: Colors.green,
                      onTap: () async {
                        Post_Service_One_Roq obi_roq = Post_Service_One_Roq();
                        var data_roq = await obi_roq.fetch_One_Data_roq();
                        print(data_roq!.id);
                        print(data_roq!.userId);
                        print(data_roq!.title);
                        print(data_roq!.body);
                        _showSnackBar(context, "Single post fetched successfully!");
                      },
                    ),
                    _buildOperationCard(
                      title: "Fetch Multiple Posts",
                      subtitle: "Get multiple data records from API",
                      icon: Icons.list_alt,
                      color: Colors.purple,
                      onTap: () async {
                        Post_Service_Multi_Roq P = Post_Service_Multi_Roq();
                        List<Post_One_Roq> data = await P.fetch_Multi_Data_roq();
                        for (final i in data) {
                          print("${i.id}");
                          print("${i.userId}");
                          print("${i.title}");
                          print("${i.body}");
                        }
                        _showSnackBar(context, "${data.length} posts fetched successfully!");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 32),

                // Section 3: Networking Operations
                _buildSectionHeader(
                  title: "🔗 Networking Operations",
                  subtitle: "Complete CRUD Operations Suite",
                  icon: Icons.settings_ethernet,
                ),
                SizedBox(height: 12),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.2,
                  children: [
                    _buildNetworkCard(
                      title: "Fetch from Internet",
                      icon: Icons.download,
                      color: Colors.blue,
                      route: Fetch_Data_from_JSON_file_Roq_ex(),
                    ),
                    _buildNetworkCard(
                      title: "Fetch JSON Data",
                      icon: Icons.data_object,
                      color: Colors.teal,
                      route: API_Fetch_Data_Roq_Ex(),
                    ),
                    _buildNetworkCard(
                      title: "Send Data",
                      icon: Icons.upload,
                      color: Colors.orange,
                      route: API_Send_Data_Roq_Ex(),
                    ),
                    _buildNetworkCard(
                      title: "Delete Data",
                      icon: Icons.delete,
                      color: Colors.red,
                      route: API_Delete_Data_Roq_Ex(),
                    ),
                    _buildNetworkCard(
                      title: "Update Data",
                      icon: Icons.update,
                      color: Colors.amber,
                      route: API_Update_Data_Roq_Ex(),
                    ),
                    _buildNetworkCard(
                      title: "Authenticated Requests",
                      icon: Icons.security,
                      color: Colors.indigo,
                      route: API_Fetch_Data_Roq_Ex_MakeAuth(),
                    ),
                    _buildNetworkCard(
                      title: "Parse JSON in Background",
                      icon: Icons.backup,
                      color: Colors.deepPurple,
                      route: API_Parse_JSON_Roq_Ex(title: "Parse JSON in Background"),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showInfoDialog(context);
        },
        icon: Icon(Icons.info_outline),
        label: Text("Info"),
        backgroundColor: Colors.orange,
        elevation: 8,
        tooltip: 'About this App',
      ),
    );
  }

  Widget _buildSectionHeader({required String title, required String subtitle, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Theme.of(context).primaryColor, size: 28),
            SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 16),
        Divider(
          thickness: 2,
          color: Colors.grey[300],
        ),
      ],
    );
  }

  Widget _buildOperationCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Function onTap,
  }) {
    return Expanded(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: () => onTap(),
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color.withOpacity(0.1),
                  color.withOpacity(0.05),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: color, size: 28),
                ),
                SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNetworkCard({
    required String title,
    required IconData icon,
    required Color color,
    required Widget route,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.15),
                color.withOpacity(0.05),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 24),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.api, color: Theme.of(context).primaryColor),
            SizedBox(width: 12),
            Text("API Roq App"),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A comprehensive API testing and networking operations application.",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Text(
              "Features:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("• Local JSON file operations"),
            Text("• API data fetching (single & multiple)"),
            Text("• Complete CRUD operations"),
            Text("• Authentication handling"),
            Text("• Background JSON parsing"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}