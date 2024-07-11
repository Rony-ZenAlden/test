import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile> takePicture() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return image;
    } else {
      throw Exception('Failed to take picture');
    }
  }

  Future<XFile> formGallery() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image;
    } else {
      throw Exception('Failed to take picture');
    }
  }
}