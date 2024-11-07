class Clinic {
  String? image;
  String? title;
  String? locationName;
  double? reviewRate;
  int? countReviews;
  double? distanceKm;
  int? distanceMinutes;

  Clinic(
      {this.image,
      this.title,
      this.locationName,
      this.reviewRate,
      this.countReviews,
      this.distanceKm,
      this.distanceMinutes});

  Clinic.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    locationName = json['location_name'];
    reviewRate = json['review_rate'];
    countReviews = json['count_reviews'];
    distanceKm = json['distance_km'];
    distanceMinutes = json['distance_minutes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['location_name'] = this.locationName;
    data['review_rate'] = this.reviewRate;
    data['count_reviews'] = this.countReviews;
    data['distance_km'] = this.distanceKm;
    data['distance_minutes'] = this.distanceMinutes;
    return data;
  }
}