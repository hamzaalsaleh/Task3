import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Sliverapp extends StatelessWidget {
  const Sliverapp({super.key, this.action});
  final List<Widget>? action;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      backgroundColor: Colors.indigo,
      flexibleSpace: FlexibleSpaceBar(
        background: CachedNetworkImage(
          imageUrl:
              'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
          placeholder: (context, url) =>
              Center(child: CircularProgressIndicator()),
          fit: BoxFit.cover,
        ),
      ),
      elevation: 5,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(5),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.search,
            size: 25,
          ),
          title: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white, fontSize: 25),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      actions: action,
    );
  }
}
