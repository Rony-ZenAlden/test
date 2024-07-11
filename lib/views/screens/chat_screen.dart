import 'package:chance_app/controllers/image_controller.dart';
import 'package:chance_app/core/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/chat_message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ImageController controller = Get.put(ImageController());
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bruno Pham'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const ChatMessageWidget(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.formGallery();
                },
                icon: Icon(
                  Icons.photo,
                  size: 30,
                  color: Colors.grey.shade700,
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: textEditingController,
                  validator: (value) =>
                      MyValidators.displayNameValidator(value),
                  decoration: const InputDecoration(
                    hintText: 'Type something',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send_sharp,
                  size: 30,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
