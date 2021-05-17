class ImageModelFull {
  String id = "";
  String createdAt = "";
  String updatedAt = "";
  String promotedAt = "";
  int width = 0;
  int height = 0;
  String color = "";
  String description = "";
  String altDescription = "";
  UrlsFull? urls;
  LinksFull? links;
  int likes = 0;
  bool likedByUser = false;
  SponsorshipFull? sponsorship;
  SponsorFull? user;

  ImageModelFull(
      {required String id,
      required String createdAt,
      required String updatedAt,
      required String promotedAt,
      required int width,
      required int height,
      required String color,
      required int colorInt,
      required String description,
      required String altDescription,
      UrlsFull? urls,
      LinksFull? links,
      required List<String> categories,
      required int likes,
      required bool likedByUser,
      SponsorshipFull? sponsorship,
      SponsorFull? user}) {
    this.id = id;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.promotedAt = promotedAt;
    this.width = width;
    this.height = height;
    this.color = color;
    this.description = description;
    this.altDescription = altDescription;
    this.urls = urls;
    this.links = links;
    this.likes = likes;
    this.likedByUser = likedByUser;
    this.sponsorship = sponsorship;
    this.user = user;
  }

  ImageModelFull.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    promotedAt = json['promoted_at'] ?? "";
    width = json['width'];
    height = json['height'];
    color = json['color'];
    description = json['description'] ?? "";
    altDescription = json['alt_description'] ?? "";
    urls = json['urls'] != null ? UrlsFull.fromJson(json['urls']) : null;
    links = json['links'] != null ? LinksFull.fromJson(json['links']) : null;
    likedByUser = json['liked_by_user'];
    sponsorship = json['sponsorship'] != null
        ? SponsorshipFull.fromJson(json['sponsorship'])
        : null;
    user = json['user'] != null ? SponsorFull.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['promoted_at'] = this.promotedAt;
    data['width'] = this.width;
    data['height'] = this.height;
    data['color'] = this.color;
    data['description'] = this.description;
    data['alt_description'] = this.altDescription;
    data['urls'] = this.urls?.toJson();
    data['links'] = this.links?.toJson();
    data['likes'] = this.likes;
    data['liked_by_user'] = this.likedByUser;
    data['sponsorship'] = this.sponsorship?.toJson();
    data['user'] = this.user?.toJson();
    return data;
  }
}

class UrlsFull {
  String raw = "";
  String full = "";
  String regular = "";
  String small = "";
  String thumb = "";

  UrlsFull({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) {
    this.raw = raw;
    this.full = full;
    this.regular = regular;
    this.small = small;
    this.thumb = thumb;
  }

  UrlsFull.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['full'] = this.full;
    data['regular'] = this.regular;
    data['small'] = this.small;
    data['thumb'] = this.thumb;
    return data;
  }
}

class LinksFull {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  LinksFull(
      {String? self,
      String? html,
      String? download,
      String? downloadLocation}) {
    this.self = self;
    this.html = html;
    this.download = download;
    this.downloadLocation = downloadLocation;
  }

  LinksFull.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    download = json['download'];
    downloadLocation = json['download_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['html'] = this.html;
    data['download'] = this.download;
    data['download_location'] = this.downloadLocation;
    return data;
  }
}

class SponsorshipFull {
  String tagline = "";
  String taglineUrl = "";
  SponsorFull? sponsor;

  SponsorshipFull({
    required String tagline,
    required String taglineUrl,
    SponsorFull? sponsor,
  }) {
    this.tagline = tagline;
    this.taglineUrl = taglineUrl;
    this.sponsor = sponsor;
  }

  SponsorshipFull.fromJson(Map<String, dynamic> json) {
    tagline = json['tagline'];
    taglineUrl = json['tagline_url'];
    sponsor = json['sponsor'] != null
        ? new SponsorFull.fromJson(json['sponsor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tagline'] = this.tagline;
    data['tagline_url'] = this.taglineUrl;
    data['sponsor'] = this.sponsor?.toJson();
    return data;
  }
}

class ImageLinksFull {
  String self = "";
  String html = "";
  String photos = "";
  String likes = "";
  String portfolio = "";
  String following = "";
  String followers = "";

  ImageLinksFull(
      {required String self,
      required String html,
      required String photos,
      required String likes,
      required String portfolio,
      required String following,
      required String followers}) {
    this.self = self;
    this.html = html;
    this.photos = photos;
    this.likes = likes;
    this.portfolio = portfolio;
    this.following = following;
    this.followers = followers;
  }
  ImageLinksFull.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
    following = json['following'];
    followers = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['html'] = this.html;
    data['photos'] = this.photos;
    data['likes'] = this.likes;
    data['portfolio'] = this.portfolio;
    data['following'] = this.following;
    data['followers'] = this.followers;
    return data;
  }
}

class ProfileImageFull {
  String small = "";
  String medium = "";
  String large = "";

  ProfileImageFull({
    required String small,
    required String medium,
    required String large,
  }) {
    this.small = small;
    this.medium = medium;
    this.large = large;
  }

  ProfileImageFull.fromJson(Map<String, dynamic> json) {
    small = json['small'] ?? "";
    medium = json['medium'] ?? "";
    large = json['large'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class SponsorFull {
  String id = "";
  String updatedAt = "";
  String username = "";
  String name = "";
  String firstName = "";
  String lastName = "";
  String twitterUsername = "";
  String portfolioUrl = "";
  String bio = "";
  String location = "";
  LinksFull? links;
  ProfileImageFull? profileImage;
  String instagramUsername = "";
  int totalCollections = 0;
  int totalLikes = 0;
  int totalPhotos = 0;
  bool acceptedTos = false;

  SponsorFull(
      {required String id,
      required String updatedAt,
      required String username,
      required String name,
      required String firstName,
      required String lastName,
      required String twitterUsername,
      required String portfolioUrl,
      required String bio,
      required String location,
      LinksFull? links,
      ProfileImageFull? profileImage,
      required String instagramUsername,
      required int totalCollections,
      required int totalLikes,
      required int totalPhotos,
      required bool acceptedTos}) {
    this.id = id;
    this.updatedAt = updatedAt;
    this.username = username;
    this.name = name;
    this.firstName = firstName;
    this.lastName = lastName;
    this.twitterUsername = twitterUsername;
    this.portfolioUrl = portfolioUrl;
    this.bio = bio;
    this.location = location;
    this.links = links;
    this.profileImage = profileImage;
    this.instagramUsername = instagramUsername;
    this.totalCollections = totalCollections;
    this.totalLikes = totalLikes;
    this.totalPhotos = totalPhotos;
    this.acceptedTos = acceptedTos;
  }

  SponsorFull.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    updatedAt = json['updated_at'] ?? "";
    username = json['username'] ?? "";
    name = json['name'] ?? "";
    firstName = json['first_name'] ?? "";
    lastName = json['last_name'] ?? "";
    twitterUsername = json['twitter_username'] ?? "";
    portfolioUrl = json['portfolio_url'] ?? "";
    bio = json['bio'] ?? "";
    location = json['location'] ?? "";
    links = json['links'] != null ? LinksFull.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null
        ? ProfileImageFull.fromJson(json['profile_image'])
        : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'] ?? 0;
    totalLikes = json['total_likes'] ?? 0;
    totalPhotos = json['total_photos'] ?? 0;
    acceptedTos = json['accepted_tos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['updated_at'] = this.updatedAt;
    data['username'] = this.username;
    data['name'] = this.name;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['twitter_username'] = this.twitterUsername;
    data['portfolio_url'] = this.portfolioUrl;
    data['bio'] = this.bio;
    data['location'] = this.location;
    data['links'] = this.links?.toJson();
    data['profile_image'] = this.profileImage?.toJson();
    data['instagram_username'] = this.instagramUsername;
    data['total_collections'] = this.totalCollections;
    data['total_likes'] = this.totalLikes;
    data['total_photos'] = this.totalPhotos;
    data['accepted_tos'] = this.acceptedTos;
    return data;
  }
}
