class Fashion{
  final int id;
  final String url;
  final String name;
  final String location;
  final String description;
  bool isFavorite;
  Fashion(this.id, this.url, this.name, this.location, this.description,
      this.isFavorite);

  static List<Fashion> fashionList = [
    Fashion(2, 'assets/ikki.jpg', 'Stella Vermillion', 'New York','Mercy is well-groomed with very good taste of fashion and clothes as well as travelling globally.', false),
    Fashion(2, 'assets/lena.jpg', 'Vladilena Milizé', 'New York','Mercy is well-groomed with very good taste of fashion and clothes as well as travelling globally.', false),
    Fashion(3, 'assets/yukino.jpg', 'Yukino Yukinoshita', 'London', 'Brown maintains a positive and healthy lifestyle everytime and spreads good energy to fellow cohorts', false),
    Fashion(4, 'assets/gojo.jpg', 'Kitagawa Marin', 'Brussels','Juliet is a force to reckon with. She has won several awards in the fashion industry including the recent Fobes Woman.', false),  ];
}