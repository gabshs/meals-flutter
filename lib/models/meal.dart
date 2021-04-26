enum Complexity {
  Simple,
  Medium,
  Difficult,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    this.id,
    this.categories,
    this.title,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.complexity,
    this.isGlutenFree,
    this.isLactoseFree,
    this.isVegan,
    this.isVegetarian,
  });

  String get complexityLevel {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Mediano';
      case Complexity.Difficult:
        return 'Difícil';
      default:
        return 'Desconhecido';
    }
  }
}
