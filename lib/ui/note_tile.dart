import 'package:flutter/material.dart';
import 'package:flutter_drift/core/date_formater.dart';

import 'package:flutter_drift/model/note.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
    required this.note,
    this.onDelete,
    this.onEdit,
  });

  final Note note;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        note.title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        'Ajouté le ${note.createdAt.format} ',
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.deepPurple.shade100,
        child: Text(
          note.id,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: onEdit,
            icon: const Icon(Icons.edit_outlined, color: Colors.blue, size: 20),
          ),

          const Icon(Icons.expand_more),
        ],
      ),
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          margin: const EdgeInsets.only(left: 56, right: 16, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            note.content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade800,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
