import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/image_controller.dart';
import '../../../core/validator.dart';

class PublicChatScreen extends StatefulWidget {
  const PublicChatScreen({super.key});

  @override
  State<PublicChatScreen> createState() => _PublicChatScreenState();
}

class _PublicChatScreenState extends State<PublicChatScreen> {
  final ImageController controller = Get.put(ImageController());
  final TextEditingController textEditingController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> topic = [
    'Climate Change & Sustainability',
    'Conscious',
    'Climate Change & Sustainability',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              maxLines: 6,
              controller: textEditingController,
              validator: (value) => MyValidators.displayNameValidator(value),
              decoration: const InputDecoration(
                hintText: 'Type something',
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Topic',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: topic.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  topic[index],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 30,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.takePicture();
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 36,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.formGallery();
                        },
                        icon: const Icon(
                          Icons.photo,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
