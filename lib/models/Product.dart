class Product {
  Product({
    num? id,
    String? brand,
    String? name,
    String? price,
    dynamic priceSign,
    dynamic currency,
    String? imageLink,
    String? productLink,
    String? websiteLink,
    String? description,
    num? rating,
    dynamic category,
    String? productType,
    List<String>? tagList,
    String? createdAt,
    String? updatedAt,
    String? productApiUrl,
    String? apiFeaturedImage,
    List<ProductColor>? productColors,
  }) {
    _id = id;
    _brand = brand;
    _name = name;
    _price = price;
    _priceSign = priceSign;
    _currency = currency;
    _imageLink = imageLink;
    _productLink = productLink;
    _websiteLink = websiteLink;
    _description = description;
    _rating = rating;
    _category = category;
    _productType = productType;
    _tagList = tagList;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _productApiUrl = productApiUrl;
    _apiFeaturedImage = apiFeaturedImage;
    _productColors = productColors;
  }

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'];
    _name = json['name'];
    _price = json['price'];
    _priceSign = json['price_sign'];
    _currency = json['currency'];
    _imageLink = json['image_link'];
    _productLink = json['product_link'];
    _websiteLink = json['website_link'];
    _description = json['description'];
    _rating = json['rating'];
    _category = json['category'];
    _productType = json['product_type'];
    _tagList = json['tag_list'] != null ? List<String>.from(json['tag_list']) : [];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _productApiUrl = json['product_api_url'];
    _apiFeaturedImage = json['api_featured_image'];
    _productColors = json['product_colors'] != null
        ? List<ProductColor>.from(
        json['product_colors'].map((v) => ProductColor.fromJson(v)))
        : [];
  }

  num? _id;
  String? _brand;
  String? _name;
  String? _price;
  dynamic _priceSign;
  dynamic _currency;
  String? _imageLink;
  String? _productLink;
  String? _websiteLink;
  String? _description;
  num? _rating;
  dynamic _category;
  String? _productType;
  List<String>? _tagList;
  String? _createdAt;
  String? _updatedAt;
  String? _productApiUrl;
  String? _apiFeaturedImage;
  List<ProductColor>? _productColors;

  num? get id => _id;
  String? get brand => _brand;
  String? get name => _name;
  String? get price => _price;
  dynamic get priceSign => _priceSign;
  dynamic get currency => _currency;
  String? get imageLink => _imageLink;
  String? get productLink => _productLink;
  String? get websiteLink => _websiteLink;
  String? get description => _description;
  num? get rating => _rating;
  dynamic get category => _category;
  String? get productType => _productType;
  List<String>? get tagList => _tagList;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get productApiUrl => _productApiUrl;
  String? get apiFeaturedImage => _apiFeaturedImage;
  List<ProductColor>? get productColors => _productColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['brand'] = _brand;
    map['name'] = _name;
    map['price'] = _price;
    map['price_sign'] = _priceSign;
    map['currency'] = _currency;
    map['image_link'] = _imageLink;
    map['product_link'] = _productLink;
    map['website_link'] = _websiteLink;
    map['description'] = _description;
    map['rating'] = _rating;
    map['category'] = _category;
    map['product_type'] = _productType;
    map['tag_list'] = _tagList;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['product_api_url'] = _productApiUrl;
    map['api_featured_image'] = _apiFeaturedImage;
    if (_productColors != null) {
      map['product_colors'] = _productColors?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class ProductColor {
  String? hexValue;
  String? colorName;

  ProductColor({this.hexValue, this.colorName});

  ProductColor.fromJson(dynamic json) {
    hexValue = json['hex_value'];
    colorName = json['colour_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hex_value': hexValue,
      'colour_name': colorName,
    };
  }
}
