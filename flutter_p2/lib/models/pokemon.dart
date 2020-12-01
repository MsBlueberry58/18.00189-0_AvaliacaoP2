
// Classe criada a partir da pokeapi

class Pokemon_Obj {
  int _id;
  String _name;
  Pokemon _pokemon;
  Sprites _sprites;

  Pokemon_Obj({int id, String name, Pokemon pokemon, Sprites sprites}) {
    this._id = id;
    this._name = name;
    this._pokemon = pokemon;
    this._sprites = sprites;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  Pokemon get pokemon => _pokemon;
  set pokemon(Pokemon pokemon) => _pokemon = pokemon;
  Sprites get sprites => _sprites;
  set sprites(Sprites sprites) => _sprites = sprites;

  Pokemon_Obj.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _pokemon =
    json['pokemon'] != null ? new Pokemon.fromJson(json['pokemon']) : null;
    _sprites =
    json['sprites'] != null ? new Sprites.fromJson(json['sprites']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    if (this._pokemon != null) {
      data['pokemon'] = this._pokemon.toJson();
    }
    if (this._sprites != null) {
      data['sprites'] = this._sprites.toJson();
    }
    return data;
  }
}

class Pokemon {
  String _name;
  String _url;

  Pokemon({String name, String url}) {
    this._name = name;
    this._url = url;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get url => _url;
  set url(String url) => _url = url;

  Pokemon.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['url'] = this._url;
    return data;
  }
}

class Sprites {
  String _backDefault;
  String _backShiny;
  String _frontDefault;
  String _frontShiny;

  Sprites(
      {String backDefault,
        String backShiny,
        String frontDefault,
        String frontShiny}) {
    this._backDefault = backDefault;
    this._backShiny = backShiny;
    this._frontDefault = frontDefault;
    this._frontShiny = frontShiny;
  }

  String get backDefault => _backDefault;
  set backDefault(String backDefault) => _backDefault = backDefault;
  String get backShiny => _backShiny;
  set backShiny(String backShiny) => _backShiny = backShiny;
  String get frontDefault => _frontDefault;
  set frontDefault(String frontDefault) => _frontDefault = frontDefault;
  String get frontShiny => _frontShiny;
  set frontShiny(String frontShiny) => _frontShiny = frontShiny;

  Sprites.fromJson(Map<String, dynamic> json) {
    _backDefault = json['back_default'];
    _backShiny = json['back_shiny'];
    _frontDefault = json['front_default'];
    _frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this._backDefault;
    data['back_shiny'] = this._backShiny;
    data['front_default'] = this._frontDefault;
    data['front_shiny'] = this._frontShiny;
    return data;
  }
}