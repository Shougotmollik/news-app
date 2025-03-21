import 'package:orbitnews/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categoryList = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel.categoryName = 'Business';
  categoryModel.categoryImage = 'assets/images/business.jpg';
  categoryList.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Science';
  categoryModel.categoryImage = 'assets/images/science.jpeg';
  categoryList.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Sports';
  categoryModel.categoryImage = 'assets/images/sports.jpg';
  categoryList.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Technology';
  categoryModel.categoryImage = 'assets/images/technology.jpg';
  categoryList.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Entertainment';
  categoryModel.categoryImage = 'assets/images/entertainment.jpg';
  categoryList.add(categoryModel);
  categoryModel = CategoryModel();

  return categoryList;
}
