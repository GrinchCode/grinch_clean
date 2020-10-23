class Jedi {
  String name;
  String race;

  Jedi.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        race = map['race'];

  Map<String, dynamic> toMap() => {
        'name': name,
        'race': race,
      };

  @override
  String toString() => toMap().toString();
}
