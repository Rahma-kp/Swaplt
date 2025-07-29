import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addingscreen extends StatefulWidget {
  const Addingscreen({super.key});

  @override
  State<Addingscreen> createState() => _AddingscreenState();
}

class _AddingscreenState extends State<Addingscreen> {
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();

    if (selectedImages.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least 3 images')),
      );
      return;
    }

    setState(() {
      _images.clear();
      _images.addAll(selectedImages);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImages,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.black38,
                  ),
                  color: const Color.fromARGB(210, 208, 205, 205),
                ),
                child: const Icon(Icons.add_a_photo, size: 40, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 20),
            if (_images.isNotEmpty)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(_images[index].path),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
