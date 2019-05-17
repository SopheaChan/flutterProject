import 'package:flutter/material.dart';

Image imageButton(String assetName) {
  var imageAssets = AssetImage(assetName);
  var image = Image(
    image: imageAssets,
    width: 60.0,
    height: 60.0,
  );
  return image;
}