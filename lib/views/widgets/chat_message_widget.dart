import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ChatMessage(
            message: 'Hello! How are you?',
            isMe: false,
            userImage: 'assets/images/profile.png',
            time: '16:04',
            imageUrl: null, // No image
          ),
          ChatMessage(
            message: 'I am good, thank you!',
            isMe: true,
            userImage: 'assets/images/true.jpg',
            time: '16:04',
            imageUrl: null, // Image URL
          ),
          ChatMessage(
            message:
                'Lorem ipsum dolor sit amet consectetur.Sagitiis diam auctor convallis justo pe;;entesque in eu amet sapien.Arcu pellentesque.Lorem ipsum dolor sit amet consectetur.Sagitiis diam auctor convallis justo pe;;entesque in eu amet sapien.Arcu pellentesque.',
            isMe: false,
            userImage: 'assets/images/profile.png',
            time: '16:04',
            imageUrl: null, // No image
          ),
          ChatMessage(
            message: '',
            isMe: false,
            userImage: 'assets/images/profile.png',
            time: '16:04',
            imageUrl: 'assets/images/true.jpg', // No image
          ),
          ChatMessage(
            message: 'Just relaxing at home.',
            isMe: true,
            userImage: 'assets/images/true.jpg',
            time: '16:04',
            imageUrl: null, // Image URL
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isMe;
  final String userImage;
  final String time;
  final String? imageUrl;

  const ChatMessage({
    super.key,
    required this.message,
    required this.isMe,
    required this.userImage,
    required this.time,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          isMe == false
              ? Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userImage),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 200),
                            child: Text(
                              message,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                          imageUrl != null
                              ? Image.asset(
                                  imageUrl!,
                                  width: 200,
                                  height: 140,
                                )
                              : const SizedBox.shrink(),
                          // Show image if URL is not null
                          const SizedBox(height: 5),
                          Text(time),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 200),
                            // Limit the width to 200 pixels
                            child: Text(
                              message,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                          imageUrl != null
                              ? Image.asset(
                                  imageUrl!,
                                  width: 100,
                                  height: 100,
                                )
                              : const SizedBox.shrink(),
                          // Show image if URL is not null
                          const SizedBox(height: 5),
                          Text(time),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(userImage),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
