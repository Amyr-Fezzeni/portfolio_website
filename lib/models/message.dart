import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Message {
  final String id;
  final String message;
  final String subject;
  final DateTime created;
  Message({
    required this.id,
    required this.message,
    required this.subject,
    required this.created,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'message': message,
      'subject': subject,
      'created': created.millisecondsSinceEpoch,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'] as String,
      message: map['message'] as String,
      subject: map['subject'] as String,
      created: DateTime.fromMillisecondsSinceEpoch(map['created'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Message(id: $id, message: $message, subject: $subject, created: $created)';
  }
}
