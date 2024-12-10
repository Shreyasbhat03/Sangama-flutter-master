import 'package:flutter/material.dart';
import 'login_page.dart'; // Make sure to import the LoginPage file
import 'chat_screen.dart'; // Import the ChatScreen here
import 'user_profile_page.dart'; // Import the UserProfilePage


class ConnectionsMainPage extends StatelessWidget {
  const ConnectionsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF294C74),
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
                const Color(0xFF20BEC1), 
                () { 
                  // Define your action for "My Network"
                },
              ),
              const SizedBox(width: 30),
              _buildIconButton(
                Icons.message, 
                "Messages", 
                const Color(0xFFB8AA6D),
                () {
                  // Navigate to ChatScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ChatScreen() ),
                  );
                },
              ),
              const SizedBox(width: 30),
              _buildIconButton(
                Icons.person, 
                "Profile", 
                const Color(0xFFB8AA6D),
                () { 
                  // Navigate to Profile Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  );
                },
              ),
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xFF20BEC1),
            labelColor: Color(0xFF20BEC1),
            unselectedLabelColor: Color(0xFFB8AA6D),
            tabs: [
              Tab(child: Text("My Connections", style: TextStyle(fontSize: 16))),
              Tab(child: Text("Invites Sent", style: TextStyle(fontSize: 16))),
              Tab(child: Text("Invites Received", style: TextStyle(fontSize: 16))),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyConnectionsPage(),
            InvitesSentPage(),
            InvitesReceivedPage(),
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

// Dummy Pages to complete the structure
class MyConnectionsPage extends StatelessWidget {
  const MyConnectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController(); // Create a ScrollController

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF294C74),
                  backgroundColor: const Color(0xFFC3D9F0),
                ),
                child: const Text("Filters"),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color(0xFFC3D9F0),
                    hintStyle: const TextStyle(color: Color(0xFF294C74)),
                    prefixIcon: const Icon(Icons.search, color: Color(0xFF0BEEB9)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFF294C74)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Scrollbar( // Wrap ListView with Scrollbar
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController, // Attach ScrollController to ListView
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    color: const Color(0xFF294C74),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF294C74),
                        child: Icon(Icons.person, color: Color(0xFF0BEEB9)),
                      ),
                      title: Text("User  ${index + 1}", style: const TextStyle(color: Color(0xFFC3D9F0))),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFF294C74),
                              backgroundColor: const Color(0xFFC3D9F0),
                            ),
                            child: const Text("Connect"),
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert, color: Color(0xFF0BEEB9)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
class InvitesSentPage extends StatelessWidget {
  const InvitesSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController(); // Create a ScrollController

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF294C74),
                  backgroundColor: const Color(0xFFC3D9F0),
                ),
                child: const Text("Filters"),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color(0xFFC3D9F0),
                    hintStyle: const TextStyle(color: Color(0xFF294C74)),
                    prefixIcon: const Icon(Icons.search, color: Color(0xFF0BEEB9)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFF294C74)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Scrollbar( // Wrap ListView with Scrollbar
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController, // Attach ScrollController to ListView
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    color: const Color(0xFF294C74),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF294C74),
                        child: Icon(Icons.person, color: Color(0xFF0BEEB9)),
                      ),
                      title: Text("Invite ${index + 1}", style: const TextStyle(color: Color(0xFFC3D9F0))),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFF294C74),
                              backgroundColor: const Color(0xFFC3D9F0),
                            ),
                            child: const Text("Pending"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFF294C74),
                              backgroundColor: const Color(0xFFC3D9F0),
                            ),
                            child: const Text("Withdraw"),
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert, color: Color(0xFF0BEEB9)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}class InvitesReceivedPage extends StatelessWidget {
  const InvitesReceivedPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController(); // Create a ScrollController

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF294C74),
                  backgroundColor: const Color(0xFFC3D9F0),
                ),
                child: const Text("Filters"),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color(0xFFC3D9F0),
                    hintStyle: const TextStyle(color: Color(0xFF294C74)),
                    prefixIcon: const Icon(Icons.search, color: Color(0xFF0BEEB9)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Color(0xFF294C74)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Scrollbar( // Wrap ListView with Scrollbar
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController, // Attach ScrollController to ListView
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    color: const Color(0xFF294C74),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF294C74),
                        child: Icon(Icons.person, color: Color(0xFF0BEEB9)),
                      ),
                      title: Text("Invite Received ${index + 1}", style: const TextStyle(color: Color(0xFFC3D9F0))),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          ElevatedButton(
                          onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFF294C74),
                          backgroundColor: const Color(0xFFC3D9F0),
                    ),
                    child: const Text("Accept"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFF294C74),
                      backgroundColor: const Color(0xFFC3D9F0),
                    ),
                    child: const Text("Decline"),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Color(0xFF0BEEB9)),
                    onPressed: () {},
                  ),
                  ],
                ),
                ),
                ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}