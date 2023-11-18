import 'dart:convert';

class JokeModel {
  final String content;
  final bool isRead;
  final bool isFunny;
  JokeModel({
    required this.content,
    required this.isRead,
    required this.isFunny,
  });

  JokeModel copyWith({
    String? content,
    bool? isRead,
    bool? isFunny,
  }) {
    return JokeModel(
      content: content ?? this.content,
      isRead: isRead ?? this.isRead,
      isFunny: isFunny ?? this.isFunny,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'isRead': isRead,
      'isFunny': isFunny,
    };
  }

  factory JokeModel.fromMap(Map<String, dynamic> map) {
    return JokeModel(
      content: map['content'] as String,
      isRead: map['isRead'] as bool,
      isFunny: map['isFunny'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory JokeModel.fromJson(String source) =>
      JokeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
