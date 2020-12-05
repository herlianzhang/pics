import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: images.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(20),
        child: Image.network(images[index].url),
      ),
    );
  }
}
