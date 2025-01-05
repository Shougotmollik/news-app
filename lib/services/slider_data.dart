import 'package:newsapp/model/slider_model.dart';
import 'package:newsapp/utils/app_assets_path.dart';

List<SliderModel> getSlider() {
  List<SliderModel> slider = [];
  SliderModel sliderModel = SliderModel();

  sliderModel.sliderText = 'Business Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.businessImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.sliderText = 'Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.entertainmentImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.sliderText = 'Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.generalImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.sliderText = 'Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.healthImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.sliderText = 'Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.scienceImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.sliderText = 'Entertainment on the base of everywhere';
  sliderModel.sliderImage = AppAssetsPath.sportsImage;
  slider.add(sliderModel);
  sliderModel = SliderModel();

  return slider;
}
