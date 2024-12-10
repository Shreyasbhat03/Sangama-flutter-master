import 'package:flutter/material.dart';
import 'package:sangama_login/pages/user_profile_page.dart';
import 'connections_page.dart';
import 'login_page.dart'; // Make sure to import the LoginPage file
 // Import the ChatScreen here


class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController(); // Create a ScrollController

    return Scaffold(
      backgroundColor: Color(0xFF294C74),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF294C74),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildIconButton(
              Icons.home,
              "Home",
              const Color(0xFFB8AA6D),
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            const SizedBox(width: 30),
            _buildIconButton(
              Icons.people,
              "My Network",
              const Color(0xFFB8AA6D),
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConnectionsMainPage()),
                    );
              },
            ),
            const SizedBox(width: 30),
            _buildIconButton(
              Icons.message,
              "Messages",
              const Color(0xFF20BEC1),
                  () {
                // Navigate to ChatScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
            ),
            const SizedBox(width: 30),
            _buildIconButton(
              Icons.person,
              "Profile",
              const Color(0xFFB8AA6D),
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfilePage()),
                    );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFF294C74),
        child: Column(
          children: [
            // Header for the chat screen
            Container(
              padding: EdgeInsets.only(left: 36, right: 16, top: 4),
              color: Color(0xFF294C74),
              child: Row(
                children: [
                  SizedBox(width: 384),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0xFFD5EDFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.search, color: Color(0xFFD5EDFF)),
                  SizedBox(width: 10),
                  Icon(Icons.more_vert, color: Color(0xFFD5EDFF)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  // Left Sidebar for Chats
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color(0xFFC3D9F0),
                      child: Column(
                          children: [
                      // Header with Chats title and Search bar
                      Container(
                      padding: EdgeInsets.only(left: 16, top: 4, bottom: 16),
                      color: Color(0xFF294C74),
                      child: Row(
                        children: [
                        Text(
                        'Chats',
                        style: TextStyle(
                          color: Color(0xFFD5EDFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Search Bar next to Chats
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            constraints: BoxConstraints(maxWidth: 180),
                            decoration: BoxDecoration(
                              color: Color(0xFF294C74),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFC3D9F0),
                                width: 1.5,
                              ),
                            ),
                            child: TextField(
                                style:
                            TextStyle(color: Color(0xFFD5EDFF)),
                        decoration: InputDecoration(
                          icon: Icon(Icons.search, color: Color(0xFFD5EDFF)),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Color(0xFFD5EDFF)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Chat List with Scrollbar
            Expanded(
              child: Scrollbar( // Add scrollbar here
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController, // Attach ScrollController to ListView
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Colors.blue),
                      ),
                      title: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Last message preview...',
                        style: TextStyle(color: Colors.white70),
                      ),
                      trailing: index == 0
                          ? CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xFFB8AA6D),
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      )
                          : null,
                      tileColor: Color(0xFFC3D9F0),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    // Main Chat Window
    Expanded(
    flex: 2,
    child: Container(
    color: Colors.white,
    child: Column(
    children: [
    // Message Area
    Expanded(
    child: Container(
    color: Colors.white,
    height: MediaQuery.of(context).size.height - 180,
    ),
    ),
    // Message Input
    Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    color: Color(0xFF294C74),
    child: Row(
    children: [
    IconButton(
    icon: Icon(Icons.emoji_emotions),
    onPressed: () {},
    color: Color(0xFFD5EDFF),
    ),
    Expanded(
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    height: 60,
    decoration: BoxDecoration(
    color: Color(0xFF294C74),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
    color: Color(0xFFC3D9F0),
    width: 1.5,
    ),
    ),
    child: TextField(
    style: TextStyle(color: Color(0xFFD5EDFF)),
    decoration: InputDecoration(
    hintText: 'Type a message',
    hintStyle: TextStyle(color: Color(0xFFD5EDFF)),
    border: InputBorder.none,
    ),
    ),
    ),
    ),
    Icon(Icons.send, color: Color(0xFFD5EDFF)),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }

  Widget _buildIconButton(
      IconData iconData, String label, Color color, VoidCallback onTap) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Ink(
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(iconData, color: color),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}