class PostModel {
  String? userName;
  String? subName;
  String? userImage;
  String? time;
  String? content;
  String? image;

  PostModel({
    required this.userName,
    required this.subName,
    required this.userImage,
    required this.time,
    required this.content,
    this.image,
  });

  static List<PostModel> postList = [
    PostModel(
      userName: 'James',
      subName: 'Topic name',
      userImage: 'assets/images/profile.png',
      time: '1 hour ago',
      content:
          'Lorem ipsum dolor sit amet consectetur.Sagitiis diam auctor convallis justo pe;;entesque in eu amet sapien.Arcu pellentesque.',
    ),
    PostModel(
      userName: 'James',
      subName: 'Topic name',
      userImage: 'assets/images/profile.png',
      time: '1 hour ago',
      content:
          'Lorem ipsum dolor sit amet consectetur.Sagitiis diam auctor convallis justo pe;;entesque in eu amet sapien.Arcu pellentesque.',
      image: 'assets/images/profile.png',
    ),
    PostModel(
      userName: 'James',
      subName: 'Topic name',
      userImage: 'assets/images/profile.png',
      time: '1 hour ago',
      content:
          'Lorem ipsum dolor sit amet consectetur.Sagitiis diam auctor convallis justo pe;;entesque in eu amet sapien.Arcu pellentesque.',
    ),
  ];
}
