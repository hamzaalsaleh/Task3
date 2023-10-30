import 'package:flutter/material.dart';

class Sliverapp extends StatelessWidget {
  const Sliverapp({super.key, this.action});
  final List<Widget>? action;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      backgroundColor: Colors.indigo,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('All Places'),
        background: Image.network(
          'https://th.bing.com/th/id/OIP.dcMfEMlntxil89Fb3Ywt3AHaE8?pid=ImgDet&rs=1',
          fit: BoxFit.cover,
        ),
      ),
      actions: action,
    );
  }
}
