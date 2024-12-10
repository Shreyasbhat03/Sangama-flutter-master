import 'package:flutter/material.dart';


class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen height minus a small value for the app bar
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = kToolbarHeight; // Default app bar height
    final reducedHeight = screenHeight - appBarHeight - 40; // Reduced by 1 or 2 inches

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF294C74), // Blue navbar color
        elevation: 0,
        title: const Text("Chat Screen"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Profile Header Section
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Full-Width Grey Background
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.grey.shade300, // Changed to grey background
              ),
              // Cover Image
              Positioned.fill(
                top: 0,
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://miro.medium.com/max/1200/1*1nMS5Hq6J3pSvXfcytb-Yw.png", // Cover image
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Profile Picture
              Positioned(
                bottom: -40, // Half inside and half outside the grey background
                left: 20,
                child: Transform.translate(
                  offset: const Offset(0, 0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white, // Border for profile
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                        "https://via.placeholder.com/150", // Profile image URL
                      ),
                    ),
                  ),
                ),
              ),
              // User Information
              Positioned(
                bottom: 20,
                left: 200,
                child: const Text(
                  "Sangama",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40), // Adjust space after profile
          // Tabs Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TabButton(label: "Education"),
                TabButton(label: "Skills"),
                TabButton(label: "Interests"),
                TabButton(label: "Research Work"),
                TabButton(label: "Achievements"),
                TabButton(label: "Internship"),
                TabButton(label: "Jobs"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Content Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SectionHeader(title: "About Me"),
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: const ContentBox(
                      content: "This section contains details about me.",
                    ),
                  ),
                  const SectionHeader(title: "Education"),
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: const ContentBox(
                      content: "This section contains educational details.",
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Chat content goes here
          Expanded(
            child: Container(
              width: double.infinity,
              height: reducedHeight, // Set the height here
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  // Chat content goes here
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20, // Just an example count
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("Message $index"),
                        );
                      },
                    ),
                  ),
                  // Message input field
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type a message",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            // Handle send message action
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String label;

  const TabButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFF294C74),
          backgroundColor: const Color(0xFFC3D9F0),
        ),
        child: Text(label),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

class ContentBox extends StatelessWidget {
  final String content;

  const ContentBox({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFC3D9F0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        content,
        style: const TextStyle(
          color: Color(0xFF294C74),
          fontSize: 14,
        ),
      ),
    );
  }
}
