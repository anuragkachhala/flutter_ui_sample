class SlideModel {
  String image;
  String title;
  String description;

  SlideModel(
      {required this.image, required this.title, required this.description});

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

List<SlideModel> getSlide = [
  SlideModel(
      image: "assets/splash3.png",
      title: "Copper Articles",
      description: "Interested in buying Copper Handicrafts"),
  SlideModel(
      image: "assets/splash3.png",
      title: "Copper Articles",
      description: "Interested in buying Copper Handicrafts"),
  SlideModel(
      image: "assets/splash3.png",
      title: "Copper Articles",
      description: "Interested in buying Copper Handicrafts"),
  SlideModel(
      image: "assets/splash3.png",
      title: "Copper Articles",
      description: "Interested in buying Copper Handicrafts")
];
