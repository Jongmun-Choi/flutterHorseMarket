import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {

  final VoidCallback? onTab;
  final IconData icon;
  final String? title;

  const CategoryButton({
    required this.onTab,
    required this.icon,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.gery[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Icon(icon, size: 16, color: Colors.grey[600]),
            ),
            if(title != null) const SizedBox(width: 8),
            if(title != null)
              Text(
                title!,
                style: const TextStyle(fontSize: 14, color: Colors.grey[600]),
              )
          ],
        ),
      ),
    );
  }
}