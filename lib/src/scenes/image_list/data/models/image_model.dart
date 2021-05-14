class ImageModel {
  String? _altDescription;
  Urls? _urls;
  Sponsor? _user;

  ImageModel({String? altDescription, Urls? urls, Sponsor? user}) {
    this._altDescription = altDescription;
    this._urls = urls;
    this._user = user;
  }

  String? get altDescription => _altDescription;
  set altDescription(String? altDescription) =>
      _altDescription = altDescription;
  Urls? get urls => _urls;
  set urls(Urls? urls) => _urls = urls;
  Sponsor? get user => _user;
  set user(Sponsor? user) => _user = user;

  ImageModel.fromJson(Map<String, dynamic> json) {
    _altDescription = json['alt_description'];
    _urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
    _user = json['user'] != null ? Sponsor.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alt_description'] = this._altDescription;
    data['urls'] = this._urls?.toJson();
    data['user'] = this._user?.toJson();
    return data;
  }
}

class Urls {
  String _regular = "";
  String _small = "";
  String _thumb = "";

  Urls({
    required String regular,
    required String small,
    required String thumb,
  }) {
    this._regular = regular;
    this._small = small;
    this._thumb = thumb;
  }

  String get regular => _regular;
  set regular(String regular) => _regular = regular;

  String get small => _small;
  set small(String small) => _small = small;

  String get thumb => _thumb;
  set thumb(String thumb) => _thumb = thumb;

  Urls.fromJson(Map<String, dynamic> json) {
    _regular = json['regular'];
    _small = json['small'];
    _thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['regular'] = this._regular;
    data['small'] = this._small;
    data['thumb'] = this._thumb;
    return data;
  }
}

class Sponsor {
  String? _username;

  Sponsor({
    String? username,
  }) {
    this._username = username;
  }

  String? get username => _username;
  set username(String? username) => _username = username;

  Sponsor.fromJson(Map<String, dynamic> json) {
    _username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this._username;
    return data;
  }
}
