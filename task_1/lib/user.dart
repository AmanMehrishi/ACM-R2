class User {
  final String imagePath;
  final String name;
  final String int1;
  final String about;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.int1,
    required this.about,
    required this.isDarkMode,
  });

  User copy({
    String? imagePath,
    String? name,
    String? int1,
    String? about,
    bool? isDarkMode,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        int1: int1 ?? this.int1,
        about: about ?? this.about,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );

  static User fromJson(Map<String, dynamic> json) => User(
    imagePath: json['imagePath'],
    name: json['name'],
    int1: json['int1'],
    about: json['about'],
    isDarkMode: json['isDarkMode'],
  );

  Map<String, dynamic> toJson() => {
    'imagePath': imagePath,
    'name': name,
    'int1': int1,
    'about': about,
    'isDarkMode': isDarkMode,
  };
}