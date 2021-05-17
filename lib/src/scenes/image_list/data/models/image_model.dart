class ImageModel {
  String altDescription = "";
  Urls urls = Urls.empty();
  Sponsor user = Sponsor.empty();

  ImageModel({
    required String altDescription,
    required Urls urls,
    required Sponsor user,
  }) {
    this.altDescription = altDescription;
    this.urls = urls;
    this.user = user;
  }

  ImageModel.fromJson(Map<String, dynamic> json) {
    altDescription = json['alt_description'];
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : Urls.empty();
    user =
        json['user'] != null ? Sponsor.fromJson(json['user']) : Sponsor.empty();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alt_description'] = this.altDescription;
    data['urls'] = this.urls.toJson();
    data['user'] = this.user.toJson();
    return data;
  }
}

class Urls {
  String regular = "";
  String small = "";
  String thumb = "";

  Urls({
    required String regular,
    required String small,
    required String thumb,
  }) {
    this.regular = regular;
    this.small = small;
    this.thumb = thumb;
  }

  Urls.empty() {
    this.regular = "";
    this.small = "";
    this.thumb = "";
  }

  Urls.fromJson(Map<String, dynamic> json) {
    regular = json['regular'] ?? "";
    small = json['small'] ?? "";
    thumb = json['thumb'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['regular'] = this.regular;
    data['small'] = this.small;
    data['thumb'] = this.thumb;
    return data;
  }
}

class Sponsor {
  String userName = "";

  Sponsor({
    required String userName,
  }) {
    this.userName = userName;
  }

  Sponsor.empty() {
    this.userName = "";
  }

  Sponsor.fromJson(Map<String, dynamic> json) {
    userName = json['username'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.userName;
    return data;
  }
}
