class OnboardingModel {
  final String image,text,subText;

  OnboardingModel({required this.image, required this.text, required this.subText,});
}

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
      image: 'assets/images/onBoarding1.png',
      text: 'Explore The history with\nArtefacta in a smart way',
      subText: 'Using our app’s history libraries\nyou can find many historical periods',
  ),
  OnboardingModel(
    image: 'assets/images/onBoarding2.png',
    text: 'From every place\non earth',
    subText: 'A big variety of ancient places\nfrom all over the world',
  ),
  OnboardingModel(
    image: 'assets/images/onBoarding3.png',
    text: 'Using modern AI technology\nfor better user experience',
    subText: 'AI provide recommendations and helps\nyou to continue the search journey',
  ),
];