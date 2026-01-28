// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../core/core.dart';
import 'utils.dart';

//! step-1 // pick img from gallery or camera
Future<File?> openPickImageModalSheet(BuildContext context) async {
  final pickedFile = await showModalBottomSheet<File?>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.image_outlined, color: Colors.white),
                label: const Text("Upload from Gallery"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF102E76), // Dark Blue
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  final picker = ImagePicker();
                  final picked = await picker.pickImage(
                    source: ImageSource.gallery,
                    maxWidth: 1080,
                    maxHeight: 720,
                    imageQuality: 85,
                  );
                  Navigator.of(context)
                      .pop(picked != null ? File(picked.path) : null);
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () async {
                final picker = ImagePicker();
                final picked = await picker.pickImage(
                  source: ImageSource.camera,
                  maxWidth: 1080,
                  maxHeight: 720,
                  imageQuality: 85,
                );
                Navigator.of(context)
                    .pop(picked != null ? File(picked.path) : null);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.photo_camera_outlined, color: Color(0xFF102E76)),
                  SizedBox(width: 8),
                  Text(
                    "Take a Photo",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF102E76),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    },
  );

  if (pickedFile == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("No image selected"),
        backgroundColor: Colors.red,
      ),
    );
  }

  return pickedFile;
}

Future<File?> openPickVideoModalSheet(BuildContext context) async {
  final pickedFile = await showModalBottomSheet<File?>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.video_library_outlined,
                    color: Colors.white),
                label: const Text("Upload from Gallery"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF102E76),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  final picked = await pickVideo(ImageSource.gallery);
                  Navigator.of(context).pop(picked);
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () async {
                final picked = await pickVideo(ImageSource.camera);
                Navigator.of(context).pop(picked);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.videocam_outlined, color: Color(0xFF102E76)),
                  SizedBox(width: 8),
                  Text(
                    "Record a Video",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF102E76),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    },
  );

  if (pickedFile == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("No video selected"),
        backgroundColor: Colors.red,
      ),
    );
  }

  return pickedFile;
}

Future<File?> pickImage(
  ImageSource source, {
  CameraDevice preferredCameraDevice = CameraDevice.rear,
}) async {
  final XFile? imagePickedFile = await ImagePicker().pickImage(
    source: source,
    preferredCameraDevice: preferredCameraDevice,
    imageQuality: 50,
    maxHeight: 1280,
    maxWidth: 960,
  );
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

Future<File?> pickVideo(ImageSource source) async {
  // ignore: prefer_final_locals
  XFile? imagePickedFile = await ImagePicker()
      .pickVideo(source: source, maxDuration: const Duration(seconds: 30));
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

//! step-2 // upload img to server
Future<String> uploadImage(File? picture) async {
  if (picture == null) {
    return "";
  }
  final url = Uri.parse(
    "${AppConstants.baseUrl}",
  );

  final request = http.MultipartRequest('POST', url);
  request.files.add(
    await http.MultipartFile.fromPath(
      'image',
      picture.path,
    ),
  ); // `image` from postman parameter

  try {
    final response = await request.send();
    if (response.statusCode == 200) {
      final responseText = await response.stream.bytesToString();
      final imageUrl =
          jsonDecode(responseText)["data"]; // "data" from api response
      // Fluttertoast.showToast(msg: "Image uploaded successfully");
      return imageUrl;
    } else {
      // Fluttertoast.showToast(
      //   msg: "Failed to upload image. Status code: ${response.statusCode}",
      // );
      return "";
    }
  } catch (e) {
    // Fluttertoast.showToast(msg: "Error uploading image: $e");
    return "";
  }
}
