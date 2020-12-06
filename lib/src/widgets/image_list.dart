import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: images.length,
      itemBuilder: (context, index) => itemList(images[index]),
    );
  }

  Widget itemList(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 5,
            blurRadius: 24,
            offset: Offset(1, 1),
          ),
        ],
      ),
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            border: Border.all(
              color: Colors.green,
            ),
          ),
          child: Column(
            children: [
              Image.network(
                image.url,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                child: Text(
                  image.title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
