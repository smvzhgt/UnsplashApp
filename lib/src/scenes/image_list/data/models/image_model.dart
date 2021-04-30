class ImageModel {
  String _id = "";
  String _createdAt = "";
  String _updatedAt = "";
  String _promotedAt = "";
  int _width = 0;
  int _height = 0;
  String _color = "";
  String? _description;
  String? _altDescription;
  Urls? _urls;
  Links? _links;
  int _likes = 0;
  bool _likedByUser = false;
  Sponsorship? _sponsorship;
  Sponsor? _user;

  ImageModel(
      {required String id,
      required String createdAt,
      required String updatedAt,
      required String promotedAt,
      required int width,
      required int height,
      required String color,
      required int colorInt,
      String? description,
      String? altDescription,
      Urls? urls,
      Links? links,
      required List<String> categories,
      required int likes,
      required bool likedByUser,
      Sponsorship? sponsorship,
      Sponsor? user}) {
    this._id = id;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._promotedAt = promotedAt;
    this._width = width;
    this._height = height;
    this._color = color;
    this._description = description;
    this._altDescription = altDescription;
    this._urls = urls;
    this._links = links;
    this._likes = likes;
    this._likedByUser = likedByUser;
    this._sponsorship = sponsorship;
    this._user = user;
  }

  // ignore: unnecessary_getters_setters
  String get id => _id;
  set id(String id) => _id = id;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  String get promotedAt => _promotedAt;
  set promotedAt(String promotedAt) => _promotedAt = promotedAt;
  int get width => _width;
  set width(int width) => _width = width;
  int get height => _height;
  set height(int height) => _height = height;
  String get color => _color;
  set color(String color) => _color = color;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get altDescription => _altDescription;
  set altDescription(String? altDescription) =>
      _altDescription = altDescription;
  Urls? get urls => _urls;
  set urls(Urls? urls) => _urls = urls;
  Links? get links => _links;
  set links(Links? links) => _links = links;
  int get likes => _likes;
  set likes(int likes) => _likes = likes;
  bool get likedByUser => _likedByUser;
  set likedByUser(bool likedByUser) => _likedByUser = likedByUser;
  Sponsorship? get sponsorship => _sponsorship;
  set sponsorship(Sponsorship? sponsorship) => _sponsorship = sponsorship;
  Sponsor? get user => _user;
  set user(Sponsor? user) => _user = user;

  ImageModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _promotedAt = json['promoted_at'];
    _width = json['width'];
    _height = json['height'];
    _color = json['color'];
    _description = json['description'];
    _altDescription = json['alt_description'];
    _urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _likedByUser = json['liked_by_user'];
    _sponsorship = json['sponsorship'] != null
        ? Sponsorship.fromJson(json['sponsorship'])
        : null;
    _user = json['user'] != null ? Sponsor.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['promoted_at'] = this._promotedAt;
    data['width'] = this._width;
    data['height'] = this._height;
    data['color'] = this._color;
    data['description'] = this._description;
    data['alt_description'] = this._altDescription;
    data['urls'] = this._urls?.toJson();
    data['links'] = this._links?.toJson();
    data['likes'] = this._likes;
    data['liked_by_user'] = this._likedByUser;
    data['sponsorship'] = this._sponsorship?.toJson();
    data['user'] = this._user?.toJson();
    return data;
  }
}

class Urls {
  String _raw = "";
  String _full = "";
  String _regular = "";
  String _small = "";
  String _thumb = "";

  Urls({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) {
    this._raw = raw;
    this._full = full;
    this._regular = regular;
    this._small = small;
    this._thumb = thumb;
  }

  String get raw => _raw;
  set raw(String raw) => _raw = raw;
  String get full => _full;
  set full(String full) => _full = full;
  String get regular => _regular;
  set regular(String regular) => _regular = regular;
  String get small => _small;
  set small(String small) => _small = small;
  String get thumb => _thumb;
  set thumb(String thumb) => _thumb = thumb;

  Urls.fromJson(Map<String, dynamic> json) {
    _raw = json['raw'];
    _full = json['full'];
    _regular = json['regular'];
    _small = json['small'];
    _thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this._raw;
    data['full'] = this._full;
    data['regular'] = this._regular;
    data['small'] = this._small;
    data['thumb'] = this._thumb;
    return data;
  }
}

class Links {
  String? _self;
  String? _html;
  String? _download;
  String? _downloadLocation;

  Links(
      {String? self,
      String? html,
      String? download,
      String? downloadLocation}) {
    this._self = self;
    this._html = html;
    this._download = download;
    this._downloadLocation = downloadLocation;
  }

  String? get self => _self;
  set self(String? self) => _self = self;
  String? get html => _html;
  set html(String? html) => _html = html;
  String? get download => _download;
  set download(String? download) => _download = download;
  String? get downloadLocation => _downloadLocation;
  set downloadLocation(String? downloadLocation) =>
      _downloadLocation = downloadLocation;

  Links.fromJson(Map<String, dynamic> json) {
    _self = json['self'];
    _html = json['html'];
    _download = json['download'];
    _downloadLocation = json['download_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this._self;
    data['html'] = this._html;
    data['download'] = this._download;
    data['download_location'] = this._downloadLocation;
    return data;
  }
}

class Sponsorship {
  String _tagline = "";
  String _taglineUrl = "";
  Sponsor? _sponsor;

  Sponsorship(
      {required String tagline, required String taglineUrl, Sponsor? sponsor}) {
    this._tagline = tagline;
    this._taglineUrl = taglineUrl;
    this._sponsor = sponsor;
  }

  String get tagline => _tagline;
  set tagline(String tagline) => _tagline = tagline;
  String get taglineUrl => _taglineUrl;
  set taglineUrl(String taglineUrl) => _taglineUrl = taglineUrl;
  Sponsor? get sponsor => _sponsor;
  set sponsor(Sponsor? sponsor) => _sponsor = sponsor;

  Sponsorship.fromJson(Map<String, dynamic> json) {
    _tagline = json['tagline'];
    _taglineUrl = json['tagline_url'];
    _sponsor =
        json['sponsor'] != null ? new Sponsor.fromJson(json['sponsor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tagline'] = this._tagline;
    data['tagline_url'] = this._taglineUrl;
    data['sponsor'] = this._sponsor?.toJson();
    return data;
  }
}

class ImageLinks {
  String _self = "";
  String _html = "";
  String _photos = "";
  String _likes = "";
  String _portfolio = "";
  String _following = "";
  String _followers = "";

  ImageLinks(
      {required String self,
      required String html,
      required String photos,
      required String likes,
      required String portfolio,
      required String following,
      required String followers}) {
    this._self = self;
    this._html = html;
    this._photos = photos;
    this._likes = likes;
    this._portfolio = portfolio;
    this._following = following;
    this._followers = followers;
  }

  String get self => _self;
  set self(String self) => _self = self;
  String get html => _html;
  set html(String html) => _html = html;
  String get photos => _photos;
  set photos(String photos) => _photos = photos;
  String get likes => _likes;
  set likes(String likes) => _likes = likes;
  String get portfolio => _portfolio;
  set portfolio(String portfolio) => _portfolio = portfolio;
  String get following => _following;
  set following(String following) => _following = following;
  String get followers => _followers;
  set followers(String followers) => _followers = followers;

  ImageLinks.fromJson(Map<String, dynamic> json) {
    _self = json['self'];
    _html = json['html'];
    _photos = json['photos'];
    _likes = json['likes'];
    _portfolio = json['portfolio'];
    _following = json['following'];
    _followers = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this._self;
    data['html'] = this._html;
    data['photos'] = this._photos;
    data['likes'] = this._likes;
    data['portfolio'] = this._portfolio;
    data['following'] = this._following;
    data['followers'] = this._followers;
    return data;
  }
}

class ProfileImage {
  String _small = "";
  String _medium = "";
  String _large = "";

  ProfileImage(
      {required String small, required String medium, required String large}) {
    this._small = small;
    this._medium = medium;
    this._large = large;
  }

  String get small => _small;
  set small(String small) => _small = small;
  String get medium => _medium;
  set medium(String medium) => _medium = medium;
  String get large => _large;
  set large(String large) => _large = large;

  ProfileImage.fromJson(Map<String, dynamic> json) {
    _small = json['small'];
    _medium = json['medium'];
    _large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this._small;
    data['medium'] = this._medium;
    data['large'] = this._large;
    return data;
  }
}

class Sponsor {
  String? _id;
  String? _updatedAt;
  String? _username;
  String? _name;
  String? _firstName;
  String? _lastName;
  String? _twitterUsername;
  String? _portfolioUrl;
  String? _bio;
  String? _location;
  Links? _links;
  ProfileImage? _profileImage;
  String? _instagramUsername;
  int? _totalCollections;
  int? _totalLikes;
  int? _totalPhotos;
  bool _acceptedTos = false;

  Sponsor(
      {String? id,
      String? updatedAt,
      String? username,
      String? name,
      String? firstName,
      String? lastName,
      String? twitterUsername,
      String? portfolioUrl,
      String? bio,
      String? location,
      Links? links,
      ProfileImage? profileImage,
      String? instagramUsername,
      int? totalCollections,
      int? totalLikes,
      int? totalPhotos,
      required bool acceptedTos}) {
    this._id = id;
    this._updatedAt = updatedAt;
    this._username = username;
    this._name = name;
    this._firstName = firstName;
    this._lastName = lastName;
    this._twitterUsername = twitterUsername;
    this._portfolioUrl = portfolioUrl;
    this._bio = bio;
    this._location = location;
    this._links = links;
    this._profileImage = profileImage;
    this._instagramUsername = instagramUsername;
    this._totalCollections = totalCollections;
    this._totalLikes = totalLikes;
    this._totalPhotos = totalPhotos;
    this._acceptedTos = acceptedTos;
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get twitterUsername => _twitterUsername;
  set twitterUsername(String? twitterUsername) =>
      _twitterUsername = twitterUsername;
  String? get portfolioUrl => _portfolioUrl;
  set portfolioUrl(String? portfolioUrl) => _portfolioUrl = portfolioUrl;
  String? get bio => _bio;
  set bio(String? bio) => _bio = bio;
  String? get location => _location;
  set location(String? location) => _location = location;
  Links? get links => _links;
  set links(Links? links) => _links = links;
  ProfileImage? get profileImage => _profileImage;
  set profileImage(ProfileImage? profileImage) => _profileImage = profileImage;
  String? get instagramUsername => _instagramUsername;
  set instagramUsername(String? instagramUsername) =>
      _instagramUsername = instagramUsername;
  int? get totalCollections => _totalCollections;
  set totalCollections(int? totalCollections) =>
      _totalCollections = totalCollections;
  int? get totalLikes => _totalLikes;
  set totalLikes(int? totalLikes) => _totalLikes = totalLikes;
  int? get totalPhotos => _totalPhotos;
  set totalPhotos(int? totalPhotos) => _totalPhotos = totalPhotos;
  bool get acceptedTos => _acceptedTos;
  set acceptedTos(bool acceptedTos) => _acceptedTos = acceptedTos;

  Sponsor.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _updatedAt = json['updated_at'];
    _username = json['username'];
    _name = json['name'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _twitterUsername = json['twitter_username'];
    _portfolioUrl = json['portfolio_url'];
    _bio = json['bio'];
    _location = json['location'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _profileImage = json['profile_image'] != null
        ? ProfileImage.fromJson(json['profile_image'])
        : null;
    _instagramUsername = json['instagram_username'];
    _totalCollections = json['total_collections'];
    _totalLikes = json['total_likes'];
    _totalPhotos = json['total_photos'];
    _acceptedTos = json['accepted_tos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['updated_at'] = this._updatedAt;
    data['username'] = this._username;
    data['name'] = this._name;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['twitter_username'] = this._twitterUsername;
    data['portfolio_url'] = this._portfolioUrl;
    data['bio'] = this._bio;
    data['location'] = this._location;
    data['links'] = this.links?.toJson();
    data['profile_image'] = this._profileImage?.toJson();
    data['instagram_username'] = this._instagramUsername;
    data['total_collections'] = this._totalCollections;
    data['total_likes'] = this._totalLikes;
    data['total_photos'] = this._totalPhotos;
    data['accepted_tos'] = this._acceptedTos;
    return data;
  }
}
