import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/utils/app_assets_path.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel.categoryName = 'Business';
  categoryModel.image = AppAssetsPath.businessImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Entertainment';
  categoryModel.image = AppAssetsPath.entertainmentImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'General';
  categoryModel.image = AppAssetsPath.generalImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Health';
  categoryModel.image = AppAssetsPath.healthImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Science';
  categoryModel.image = AppAssetsPath.scienceImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Sports';
  categoryModel.image = AppAssetsPath.sportsImage;
  category.add(categoryModel);
  categoryModel = CategoryModel();

  return category;
}
