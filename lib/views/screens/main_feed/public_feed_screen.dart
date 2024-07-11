import 'package:chance_app/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PublicFeedScreen extends StatefulWidget {
  const PublicFeedScreen({super.key});

  @override
  State<PublicFeedScreen> createState() => _PublicFeedScreenState();
}

class _PublicFeedScreenState extends State<PublicFeedScreen> {
  List posts = PostModel.postList;

  Future<void> helloWorld() async {
    Get.snackbar('Success', 'Hello World');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feeds',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.hourglass_empty_sharp,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () {
                  return helloWorld();
                },
                child: ListView.separated(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset(
                                      posts[index].userImage,
                                      width: 52,
                                      height: 58,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            posts[index].userName,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                            'assets/images/true.jpg',
                                            height: 15,
                                            width: 15,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            '.',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            posts[index].time,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        posts[index].subName,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.more_horiz_sharp,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            posts[index].content,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          posts[index].image != null
                              ? Image.asset(posts[index].image)
                              : Container(),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_sharp,
                                      size: 34,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.chat,
                                      size: 34,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.send_sharp,
                                      size: 34,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.save_alt,
                                  size: 34,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 40,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
