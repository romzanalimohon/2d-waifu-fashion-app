class characterDetails{

  String name;
  String type;
  int age;
  String details;
  String img1;
  String img11;
  String img12;
  String img13;



  characterDetails(this.name, this.type, this.age, this.details, this.img1, this.img11, this.img12, this.img13);

  static List<characterDetails> charList = [
    characterDetails(
        'Stella', 'tsundere', 16, 'details', 'https://wallpapercave.com/wp/wp6856207.jpg',
      'https://cdn.myanimelist.net/images/characters/10/320409.jpg',
      'https://cdn.myanimelist.net/images/manga/2/145153.jpg',
      'https://cdn.myanimelist.net/images/manga/3/204309.jpg',
    ),
    characterDetails(
        'Lena', 'himedere', 16, 'details', 'https://cdn.myanimelist.net/images/characters/13/445341.jpg',
      'https://cdn.myanimelist.net/images/characters/10/345060.jpg',
      'https://cdn.myanimelist.net/images/characters/12/365255.jpg',
      'https://cdn.myanimelist.net/images/characters/2/365409.jpg',
    ),
    characterDetails(
        'Marin', 'kuudere', 16, 'details', 'https://cdn.myanimelist.net/images/characters/8/470522.jpg',
      'https://cdn.myanimelist.net/images/characters/14/457312.jpg',
      'https://cdn.myanimelist.net/images/characters/14/462340.jpg',
      'https://cdn.myanimelist.net/images/characters/10/459773.jpg',
    ),
    characterDetails(
        'Yukino', 'yandere', 16, 'details',
      'https://cdn.myanimelist.net/images/characters/6/199207.jpg',
      'https://cdn.myanimelist.net/images/characters/4/202721.jpg',
      'https://cdn.myanimelist.net/images/characters/4/314557.jpg',
      'https://cdn.myanimelist.net/images/characters/16/309714.jpg',
    ),
    characterDetails(
        'Siesta', 'tsundere', 16, 'details',
      'https://cdn.myanimelist.net/images/characters/4/447779.jpg',
      'https://cdn.myanimelist.net/images/characters/9/468941.jpg',
      'https://cdn.myanimelist.net/images/characters/11/422915.jpg',
      'https://cdn.myanimelist.net/images/characters/6/438456.jpg',
    ),
    characterDetails(
        'Mai', 'tsundere', 16, 'details',
      'https://cdn.myanimelist.net/images/characters/2/366639.jpg',
      'https://cdn.myanimelist.net/images/characters/15/316061.jpg',
      'https://cdn.myanimelist.net/images/characters/13/411232.jpg',
      'https://cdn.myanimelist.net/images/characters/15/442481.jpg',
    ),
  ];


}

