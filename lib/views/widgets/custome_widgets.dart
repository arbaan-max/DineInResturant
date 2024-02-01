import 'package:cached_network_image/cached_network_image.dart';
import 'package:dine_in/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconsax/flutter_iconsax.dart';

class CustomeNetworkImage extends StatelessWidget {
  const CustomeNetworkImage({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: data,
      placeholder: (context, url) => Container(
        width: Utils.screenWidth(context) * 0.11,
        color: Colors.blueGrey,
      ),
      errorWidget: (context, url, error) => const Center(
        child: Icon(Iconsax.box_remove),
      ),
    );
  }
}