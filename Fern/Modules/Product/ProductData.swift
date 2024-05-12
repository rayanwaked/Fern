//
//  ProductModel.swift
//  Fern
//
//  Created by Rayan Waked on 5/9/24.
//
//   let productModel = try? JSONDecoder().decode(ProductModel.self, from: jsonData)

import Foundation

// MARK: - ProductModel
struct ProductData: Codable {
    let code: String
    let product: Product
    let status: Int
    let statusVerbose: String

    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
    
    init(jsonData: Data) throws {
        let decoder = JSONDecoder()
        self = try decoder.decode(ProductModel.self, from: jsonData)
    }
}

// MARK: - Product
struct Product: Codable {
    let id: String
    let keywords: [String]
    let addedCountriesTags, additivesDebugTags: [JSONAny]
    let additivesN, additivesOldN: Int
    let additivesOldTags, additivesOriginalTags, additivesPrevOriginalTags, additivesTags: [String]
    let allergens, allergensFromIngredients, allergensFromUser: String
    let allergensHierarchy: [JSONAny]
    let allergensLc: String
    let allergensTags, aminoAcidsPrevTags, aminoAcidsTags: [JSONAny]
    let brands: String
    let brandsTags: [String]
    let categories: String
    let categoriesHierarchy: [String]
    let categoriesLc, categoriesOld: String
    let categoriesProperties: CategoriesProperties
    let categoriesPropertiesTags, categoriesTags: [String]
    let categoryProperties: CategoryProperties
    let checkersTags: [JSONAny]
    let ciqualFoodNameTags: [String]
    let citiesTags: [JSONAny]
    let code: String
    let codesTags: [String]
    let comparedToCategory: String
    let complete, completedT: Int
    let completeness: Double
    let correctorsTags: [String]
    let countries, countriesBeforescanbot: String
    let countriesHierarchy: [String]
    let countriesLc: String
    let countriesTags: [String]
    let createdT: Int
    let creator: Creator
    let dataQualityBugsTags, dataQualityErrorsTags: [JSONAny]
    let dataQualityInfoTags, dataQualityTags, dataQualityWarningsTags: [String]
    let dataSources: String
    let dataSourcesTags, debugParamSortedLangs: [String]
    let ecoscoreData: EcoscoreData
    let ecoscoreGrade: String
    let ecoscoreTags, editorsTags: [String]
    let embCodes, embCodesOrig: String
    let embCodesTags, entryDatesTags: [String]
    let expirationDate, foodGroups: String
    let foodGroupsTags: [String]
    let genericName, genericNameDe, genericNameEn, genericNameFr: String
    let productID: String
    let imageFrontSmallURL, imageFrontThumbURL, imageFrontURL, imageIngredientsSmallURL: String
    let imageIngredientsThumbURL, imageIngredientsURL, imageNutritionSmallURL, imageNutritionThumbURL: String
    let imageNutritionURL, imagePackagingSmallURL, imagePackagingThumbURL, imagePackagingURL: String
    let imageSmallURL, imageThumbURL, imageURL: String
    let images: Images
    let informersTags: [String]
    let ingredients: [Ingredient]
    let ingredientsAnalysis: IngredientsAnalysis
    let ingredientsAnalysisTags: [String]
    let ingredientsDebug: [String?]
    let ingredientsFromOrThatMayBeFromPalmOilN, ingredientsFromPalmOilN: Int
    let ingredientsFromPalmOilTags: [JSONAny]
    let ingredientsHierarchy, ingredientsIDSDebug: [String]
    let ingredientsLc: String
    let ingredientsN: Int
    let ingredientsNTags, ingredientsOriginalTags: [String]
    let ingredientsPercentAnalysis: Int
    let ingredientsTags: [String]
    let ingredientsText, ingredientsTextDe, ingredientsTextDebug, ingredientsTextEn: String
    let ingredientsTextFr, ingredientsTextWithAllergens, ingredientsTextWithAllergensDe, ingredientsTextWithAllergensEn: String
    let ingredientsTextWithAllergensFr: String
    let ingredientsThatMayBeFromPalmOilN: Int
    let ingredientsThatMayBeFromPalmOilTags: [JSONAny]
    let ingredientsWithSpecifiedPercentN, ingredientsWithSpecifiedPercentSum, ingredientsWithUnspecifiedPercentN, ingredientsWithUnspecifiedPercentSum: Int
    let ingredientsWithoutCiqualCodes: [String]
    let ingredientsWithoutCiqualCodesN: Int
    let interfaceVersionCreated, interfaceVersionModified: String
    let knownIngredientsN: Int
    let labels: String
    let labelsHierarchy: [String]
    let labelsLc, labelsOld: String
    let labelsTags: [String]
    let lang: String
    let languages: Languages
    let languagesCodes: LanguagesCodes
    let languagesHierarchy, languagesTags, lastEditDatesTags: [String]
    let lastEditor: Creator
    let lastImageDatesTags: [String]
    let lastImageT: Int
    let lastModifiedBy: Creator
    let lastModifiedT, lastUpdatedT: Int
    let lc: String
    let link: String
    let mainCountriesTags: [JSONAny]
    let manufacturingPlaces: String
    let manufacturingPlacesTags: [JSONAny]
    let maxImgid: String
    let mineralsPrevTags, mineralsTags: [JSONAny]
    let miscTags: [String]
    let noNutritionData: String
    let novaGroup: Int
    let novaGroupDebug, novaGroups: String
    let novaGroupsMarkers: [String: [[String]]]
    let novaGroupsTags: [String]
    let nucleotidesPrevTags, nucleotidesTags: [JSONAny]
    let nutrientLevels: NutrientLevels
    let nutrientLevelsTags: [String]
    let nutriments: Nutriments
    let nutriscore: [String: Nutriscore]
    let nutriscore2021_Tags, nutriscore2023_Tags: [String]
    let nutriscoreData: NutriscoreData
    let nutriscoreGrade: String
    let nutriscoreScore, nutriscoreScoreOpposite: Int
    let nutriscoreTags: [String]
    let nutriscoreVersion, nutritionData, nutritionDataPer, nutritionDataPrepared: String
    let nutritionDataPreparedPer, nutritionGradeFr, nutritionGrades: String
    let nutritionGradesTags: [String]
    let nutritionScoreBeverage: Int
    let nutritionScoreDebug: String
    let nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients, nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: Int
    let origin, originDe, originEn, originFr: String
    let origins: String
    let originsHierarchy: [String]
    let originsLc, originsOld: String
    let originsTags: [String]
    let otherNutritionalSubstancesTags: [JSONAny]
    let packaging: String
    let packagingHierarchy: [String]
    let packagingLc: String
    let packagingMaterialsTags: [String]
    let packagingOld, packagingOldBeforeTaxonomization: String
    let packagingRecyclingTags: [JSONAny]
    let packagingShapesTags, packagingTags: [String]
    let packagingText, packagingTextDe, packagingTextEn, packagingTextFr: String
    let packagings: [ProductPackaging]
    let packagingsComplete: Int
    let packagingsMaterials: PackagingsMaterials
    let packagingsN: Int
    let photographersTags: [Creator]
    let pnnsGroups1: String
    let pnnsGroups1_Tags: [String]
    let pnnsGroups2: String
    let pnnsGroups2_Tags: [String]
    let popularityKey: Int
    let popularityTags: [String]
    let productName, productNameDe, productNameEn, productNameFr: String
    let productQuantity, purchasePlaces: String
    let purchasePlacesTags: [String]
    let quantity: String
    let removedCountriesTags: [JSONAny]
    let rev, scansN: Int
    let selectedImages: SelectedImages
    let servingSize: String
    let sortkey: Int
    let states: String
    let statesHierarchy, statesTags: [String]
    let stores: String
    let storesTags: [String]
    let traces, tracesFromIngredients, tracesFromUser: String
    let tracesHierarchy: [JSONAny]
    let tracesLc: String
    let tracesTags: [JSONAny]
    let uniqueScansN, unknownIngredientsN: Int
    let unknownNutrientsTags: [JSONAny]
    let updateKey: String
    let vitaminsPrevTags, vitaminsTags, weighersTags: [JSONAny]
    let withNonNutritiveSweeteners, withSweeteners: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case keywords = "_keywords"
        case addedCountriesTags = "added_countries_tags"
        case additivesDebugTags = "additives_debug_tags"
        case additivesN = "additives_n"
        case additivesOldN = "additives_old_n"
        case additivesOldTags = "additives_old_tags"
        case additivesOriginalTags = "additives_original_tags"
        case additivesPrevOriginalTags = "additives_prev_original_tags"
        case additivesTags = "additives_tags"
        case allergens
        case allergensFromIngredients = "allergens_from_ingredients"
        case allergensFromUser = "allergens_from_user"
        case allergensHierarchy = "allergens_hierarchy"
        case allergensLc = "allergens_lc"
        case allergensTags = "allergens_tags"
        case aminoAcidsPrevTags = "amino_acids_prev_tags"
        case aminoAcidsTags = "amino_acids_tags"
        case brands
        case brandsTags = "brands_tags"
        case categories
        case categoriesHierarchy = "categories_hierarchy"
        case categoriesLc = "categories_lc"
        case categoriesOld = "categories_old"
        case categoriesProperties = "categories_properties"
        case categoriesPropertiesTags = "categories_properties_tags"
        case categoriesTags = "categories_tags"
        case categoryProperties = "category_properties"
        case checkersTags = "checkers_tags"
        case ciqualFoodNameTags = "ciqual_food_name_tags"
        case citiesTags = "cities_tags"
        case code
        case codesTags = "codes_tags"
        case comparedToCategory = "compared_to_category"
        case complete
        case completedT = "completed_t"
        case completeness
        case correctorsTags = "correctors_tags"
        case countries
        case countriesBeforescanbot = "countries_beforescanbot"
        case countriesHierarchy = "countries_hierarchy"
        case countriesLc = "countries_lc"
        case countriesTags = "countries_tags"
        case createdT = "created_t"
        case creator
        case dataQualityBugsTags = "data_quality_bugs_tags"
        case dataQualityErrorsTags = "data_quality_errors_tags"
        case dataQualityInfoTags = "data_quality_info_tags"
        case dataQualityTags = "data_quality_tags"
        case dataQualityWarningsTags = "data_quality_warnings_tags"
        case dataSources = "data_sources"
        case dataSourcesTags = "data_sources_tags"
        case debugParamSortedLangs = "debug_param_sorted_langs"
        case ecoscoreData = "ecoscore_data"
        case ecoscoreGrade = "ecoscore_grade"
        case ecoscoreTags = "ecoscore_tags"
        case editorsTags = "editors_tags"
        case embCodes = "emb_codes"
        case embCodesOrig = "emb_codes_orig"
        case embCodesTags = "emb_codes_tags"
        case entryDatesTags = "entry_dates_tags"
        case expirationDate = "expiration_date"
        case foodGroups = "food_groups"
        case foodGroupsTags = "food_groups_tags"
        case genericName = "generic_name"
        case genericNameDe = "generic_name_de"
        case genericNameEn = "generic_name_en"
        case genericNameFr = "generic_name_fr"
        case productID = "id"
        case imageFrontSmallURL = "image_front_small_url"
        case imageFrontThumbURL = "image_front_thumb_url"
        case imageFrontURL = "image_front_url"
        case imageIngredientsSmallURL = "image_ingredients_small_url"
        case imageIngredientsThumbURL = "image_ingredients_thumb_url"
        case imageIngredientsURL = "image_ingredients_url"
        case imageNutritionSmallURL = "image_nutrition_small_url"
        case imageNutritionThumbURL = "image_nutrition_thumb_url"
        case imageNutritionURL = "image_nutrition_url"
        case imagePackagingSmallURL = "image_packaging_small_url"
        case imagePackagingThumbURL = "image_packaging_thumb_url"
        case imagePackagingURL = "image_packaging_url"
        case imageSmallURL = "image_small_url"
        case imageThumbURL = "image_thumb_url"
        case imageURL = "image_url"
        case images
        case informersTags = "informers_tags"
        case ingredients
        case ingredientsAnalysis = "ingredients_analysis"
        case ingredientsAnalysisTags = "ingredients_analysis_tags"
        case ingredientsDebug = "ingredients_debug"
        case ingredientsFromOrThatMayBeFromPalmOilN = "ingredients_from_or_that_may_be_from_palm_oil_n"
        case ingredientsFromPalmOilN = "ingredients_from_palm_oil_n"
        case ingredientsFromPalmOilTags = "ingredients_from_palm_oil_tags"
        case ingredientsHierarchy = "ingredients_hierarchy"
        case ingredientsIDSDebug = "ingredients_ids_debug"
        case ingredientsLc = "ingredients_lc"
        case ingredientsN = "ingredients_n"
        case ingredientsNTags = "ingredients_n_tags"
        case ingredientsOriginalTags = "ingredients_original_tags"
        case ingredientsPercentAnalysis = "ingredients_percent_analysis"
        case ingredientsTags = "ingredients_tags"
        case ingredientsText = "ingredients_text"
        case ingredientsTextDe = "ingredients_text_de"
        case ingredientsTextDebug = "ingredients_text_debug"
        case ingredientsTextEn = "ingredients_text_en"
        case ingredientsTextFr = "ingredients_text_fr"
        case ingredientsTextWithAllergens = "ingredients_text_with_allergens"
        case ingredientsTextWithAllergensDe = "ingredients_text_with_allergens_de"
        case ingredientsTextWithAllergensEn = "ingredients_text_with_allergens_en"
        case ingredientsTextWithAllergensFr = "ingredients_text_with_allergens_fr"
        case ingredientsThatMayBeFromPalmOilN = "ingredients_that_may_be_from_palm_oil_n"
        case ingredientsThatMayBeFromPalmOilTags = "ingredients_that_may_be_from_palm_oil_tags"
        case ingredientsWithSpecifiedPercentN = "ingredients_with_specified_percent_n"
        case ingredientsWithSpecifiedPercentSum = "ingredients_with_specified_percent_sum"
        case ingredientsWithUnspecifiedPercentN = "ingredients_with_unspecified_percent_n"
        case ingredientsWithUnspecifiedPercentSum = "ingredients_with_unspecified_percent_sum"
        case ingredientsWithoutCiqualCodes = "ingredients_without_ciqual_codes"
        case ingredientsWithoutCiqualCodesN = "ingredients_without_ciqual_codes_n"
        case interfaceVersionCreated = "interface_version_created"
        case interfaceVersionModified = "interface_version_modified"
        case knownIngredientsN = "known_ingredients_n"
        case labels
        case labelsHierarchy = "labels_hierarchy"
        case labelsLc = "labels_lc"
        case labelsOld = "labels_old"
        case labelsTags = "labels_tags"
        case lang, languages
        case languagesCodes = "languages_codes"
        case languagesHierarchy = "languages_hierarchy"
        case languagesTags = "languages_tags"
        case lastEditDatesTags = "last_edit_dates_tags"
        case lastEditor = "last_editor"
        case lastImageDatesTags = "last_image_dates_tags"
        case lastImageT = "last_image_t"
        case lastModifiedBy = "last_modified_by"
        case lastModifiedT = "last_modified_t"
        case lastUpdatedT = "last_updated_t"
        case lc, link
        case mainCountriesTags = "main_countries_tags"
        case manufacturingPlaces = "manufacturing_places"
        case manufacturingPlacesTags = "manufacturing_places_tags"
        case maxImgid = "max_imgid"
        case mineralsPrevTags = "minerals_prev_tags"
        case mineralsTags = "minerals_tags"
        case miscTags = "misc_tags"
        case noNutritionData = "no_nutrition_data"
        case novaGroup = "nova_group"
        case novaGroupDebug = "nova_group_debug"
        case novaGroups = "nova_groups"
        case novaGroupsMarkers = "nova_groups_markers"
        case novaGroupsTags = "nova_groups_tags"
        case nucleotidesPrevTags = "nucleotides_prev_tags"
        case nucleotidesTags = "nucleotides_tags"
        case nutrientLevels = "nutrient_levels"
        case nutrientLevelsTags = "nutrient_levels_tags"
        case nutriments, nutriscore
        case nutriscore2021_Tags = "nutriscore_2021_tags"
        case nutriscore2023_Tags = "nutriscore_2023_tags"
        case nutriscoreData = "nutriscore_data"
        case nutriscoreGrade = "nutriscore_grade"
        case nutriscoreScore = "nutriscore_score"
        case nutriscoreScoreOpposite = "nutriscore_score_opposite"
        case nutriscoreTags = "nutriscore_tags"
        case nutriscoreVersion = "nutriscore_version"
        case nutritionData = "nutrition_data"
        case nutritionDataPer = "nutrition_data_per"
        case nutritionDataPrepared = "nutrition_data_prepared"
        case nutritionDataPreparedPer = "nutrition_data_prepared_per"
        case nutritionGradeFr = "nutrition_grade_fr"
        case nutritionGrades = "nutrition_grades"
        case nutritionGradesTags = "nutrition_grades_tags"
        case nutritionScoreBeverage = "nutrition_score_beverage"
        case nutritionScoreDebug = "nutrition_score_debug"
        case nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients = "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients"
        case nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue = "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients_value"
        case nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients = "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients"
        case nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue = "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value"
        case origin
        case originDe = "origin_de"
        case originEn = "origin_en"
        case originFr = "origin_fr"
        case origins
        case originsHierarchy = "origins_hierarchy"
        case originsLc = "origins_lc"
        case originsOld = "origins_old"
        case originsTags = "origins_tags"
        case otherNutritionalSubstancesTags = "other_nutritional_substances_tags"
        case packaging
        case packagingHierarchy = "packaging_hierarchy"
        case packagingLc = "packaging_lc"
        case packagingMaterialsTags = "packaging_materials_tags"
        case packagingOld = "packaging_old"
        case packagingOldBeforeTaxonomization = "packaging_old_before_taxonomization"
        case packagingRecyclingTags = "packaging_recycling_tags"
        case packagingShapesTags = "packaging_shapes_tags"
        case packagingTags = "packaging_tags"
        case packagingText = "packaging_text"
        case packagingTextDe = "packaging_text_de"
        case packagingTextEn = "packaging_text_en"
        case packagingTextFr = "packaging_text_fr"
        case packagings
        case packagingsComplete = "packagings_complete"
        case packagingsMaterials = "packagings_materials"
        case packagingsN = "packagings_n"
        case photographersTags = "photographers_tags"
        case pnnsGroups1 = "pnns_groups_1"
        case pnnsGroups1_Tags = "pnns_groups_1_tags"
        case pnnsGroups2 = "pnns_groups_2"
        case pnnsGroups2_Tags = "pnns_groups_2_tags"
        case popularityKey = "popularity_key"
        case popularityTags = "popularity_tags"
        case productName = "product_name"
        case productNameDe = "product_name_de"
        case productNameEn = "product_name_en"
        case productNameFr = "product_name_fr"
        case productQuantity = "product_quantity"
        case purchasePlaces = "purchase_places"
        case purchasePlacesTags = "purchase_places_tags"
        case quantity
        case removedCountriesTags = "removed_countries_tags"
        case rev
        case scansN = "scans_n"
        case selectedImages = "selected_images"
        case servingSize = "serving_size"
        case sortkey, states
        case statesHierarchy = "states_hierarchy"
        case statesTags = "states_tags"
        case stores
        case storesTags = "stores_tags"
        case traces
        case tracesFromIngredients = "traces_from_ingredients"
        case tracesFromUser = "traces_from_user"
        case tracesHierarchy = "traces_hierarchy"
        case tracesLc = "traces_lc"
        case tracesTags = "traces_tags"
        case uniqueScansN = "unique_scans_n"
        case unknownIngredientsN = "unknown_ingredients_n"
        case unknownNutrientsTags = "unknown_nutrients_tags"
        case updateKey = "update_key"
        case vitaminsPrevTags = "vitamins_prev_tags"
        case vitaminsTags = "vitamins_tags"
        case weighersTags = "weighers_tags"
        case withNonNutritiveSweeteners = "with_non_nutritive_sweeteners"
        case withSweeteners = "with_sweeteners"
    }
}

// MARK: - CategoriesProperties
struct CategoriesProperties: Codable {
    let agribalyseFoodCodeEn, agribalyseProxyFoodCodeEn, ciqualFoodCodeEn: String

    enum CodingKeys: String, CodingKey {
        case agribalyseFoodCodeEn = "agribalyse_food_code:en"
        case agribalyseProxyFoodCodeEn = "agribalyse_proxy_food_code:en"
        case ciqualFoodCodeEn = "ciqual_food_code:en"
    }
}

// MARK: - CategoryProperties
struct CategoryProperties: Codable {
    let ciqualFoodNameEn, ciqualFoodNameFr: String

    enum CodingKeys: String, CodingKey {
        case ciqualFoodNameEn = "ciqual_food_name:en"
        case ciqualFoodNameFr = "ciqual_food_name:fr"
    }
}

enum Creator: String, Codable {
    case geokie = "geokie"
    case kch = "kch"
    case kiliweb = "kiliweb"
    case openfoodfactsContributors = "openfoodfacts-contributors"
    case waupline = "waupline"
}

// MARK: - EcoscoreData
struct EcoscoreData: Codable {
    let adjustments: Adjustments
    let ecoscoreNotApplicableForCategory: String
    let missing: Missing
    let scores: Scores
    let status: String

    enum CodingKeys: String, CodingKey {
        case adjustments
        case ecoscoreNotApplicableForCategory = "ecoscore_not_applicable_for_category"
        case missing, scores, status
    }
}

// MARK: - Adjustments
struct Adjustments: Codable {
    let originsOfIngredients: OriginsOfIngredients
    let packaging: AdjustmentsPackaging
    let productionSystem: ProductionSystem
    let threatenedSpecies: Scores

    enum CodingKeys: String, CodingKey {
        case originsOfIngredients = "origins_of_ingredients"
        case packaging
        case productionSystem = "production_system"
        case threatenedSpecies = "threatened_species"
    }
}

// MARK: - OriginsOfIngredients
struct OriginsOfIngredients: Codable {
    let aggregatedOrigins: [AggregatedOrigin]
    let epiScore, epiValue: Int
    let originsFromCategories, originsFromOriginsField: [String]
    let transportationScore: Int
    let transportationScores: [String: Int]
    let transportationValue: Int
    let transportationValues: [String: Int]
    let value: Int
    let values: [String: Int]

    enum CodingKeys: String, CodingKey {
        case aggregatedOrigins = "aggregated_origins"
        case epiScore = "epi_score"
        case epiValue = "epi_value"
        case originsFromCategories = "origins_from_categories"
        case originsFromOriginsField = "origins_from_origins_field"
        case transportationScore = "transportation_score"
        case transportationScores = "transportation_scores"
        case transportationValue = "transportation_value"
        case transportationValues = "transportation_values"
        case value, values
    }
}

// MARK: - AggregatedOrigin
struct AggregatedOrigin: Codable {
    let epiScore, origin: String
    let percent: Int
    let transportationScore: JSONNull?

    enum CodingKeys: String, CodingKey {
        case epiScore = "epi_score"
        case origin, percent
        case transportationScore = "transportation_score"
    }
}

// MARK: - AdjustmentsPackaging
struct AdjustmentsPackaging: Codable {
    let nonRecyclableAndNonBiodegradableMaterials: Int
    let packagings: [PackagingPackaging]
    let score, value: Int
    let warning: String

    enum CodingKeys: String, CodingKey {
        case nonRecyclableAndNonBiodegradableMaterials = "non_recyclable_and_non_biodegradable_materials"
        case packagings, score, value, warning
    }
}

// MARK: - PackagingPackaging
struct PackagingPackaging: Codable {
    let ecoscoreMaterialScore: Int
    let ecoscoreShapeRatio: Double
    let material: String
    let nonRecyclableAndNonBiodegradable: String?
    let shape: String

    enum CodingKeys: String, CodingKey {
        case ecoscoreMaterialScore = "ecoscore_material_score"
        case ecoscoreShapeRatio = "ecoscore_shape_ratio"
        case material
        case nonRecyclableAndNonBiodegradable = "non_recyclable_and_non_biodegradable"
        case shape
    }
}

// MARK: - ProductionSystem
struct ProductionSystem: Codable {
    let labels: [JSONAny]
    let value: Int
    let warning: String
}

// MARK: - Scores
struct Scores: Codable {
}

// MARK: - Missing
struct Missing: Codable {
    let labels, packagings: Int
}

// MARK: - Images
struct Images: Codable {
    let the1, the2, the3, the4: The1
    let the5, the6, the8, the9: The1
    let the10, the11, the12, the14: The1
    let the15, the16, the17, the18: The1
    let the19, the20, the21, the22: The1
    let the23, the24, the25, the26: The1
    let the27, the28, the29, the30: The1
    let the31, the32: The1
    let frontFr, ingredientsFr: Fr
    let nutritionDe: NutritionDe
    let nutritionFr, packagingFr: Fr

    enum CodingKeys: String, CodingKey {
        case the1 = "1"
        case the2 = "2"
        case the3 = "3"
        case the4 = "4"
        case the5 = "5"
        case the6 = "6"
        case the8 = "8"
        case the9 = "9"
        case the10 = "10"
        case the11 = "11"
        case the12 = "12"
        case the14 = "14"
        case the15 = "15"
        case the16 = "16"
        case the17 = "17"
        case the18 = "18"
        case the19 = "19"
        case the20 = "20"
        case the21 = "21"
        case the22 = "22"
        case the23 = "23"
        case the24 = "24"
        case the25 = "25"
        case the26 = "26"
        case the27 = "27"
        case the28 = "28"
        case the29 = "29"
        case the30 = "30"
        case the31 = "31"
        case the32 = "32"
        case frontFr = "front_fr"
        case ingredientsFr = "ingredients_fr"
        case nutritionDe = "nutrition_de"
        case nutritionFr = "nutrition_fr"
        case packagingFr = "packaging_fr"
    }
}

// MARK: - Fr
struct Fr: Codable {
    let angle, coordinatesImageSize, geometry, imgid: String
    let normalize, rev: String
    let sizes: Sizes
    let whiteMagic, x1, x2, y1: String
    let y2: String

    enum CodingKeys: String, CodingKey {
        case angle
        case coordinatesImageSize = "coordinates_image_size"
        case geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - Sizes
struct Sizes: Codable {
    let the100, the400, full: The100
    let the200: The100?

    enum CodingKeys: String, CodingKey {
        case the100 = "100"
        case the400 = "400"
        case full
        case the200 = "200"
    }
}

// MARK: - The100
struct The100: Codable {
    let h, w: Int
}

// MARK: - NutritionDe
struct NutritionDe: Codable {
    let angle: Int
    let geometry, imgid: String
    let normalize: JSONNull?
    let ocr: Int
    let orientation, rev: String
    let sizes: Sizes
    let whiteMagic: JSONNull?
    let x1, x2, y1, y2: String

    enum CodingKeys: String, CodingKey {
        case angle, geometry, imgid, normalize, ocr, orientation, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - The1
struct The1: Codable {
    let sizes: Sizes
    let uploadedT: Int
    let uploader: Creator

    enum CodingKeys: String, CodingKey {
        case sizes
        case uploadedT = "uploaded_t"
        case uploader
    }
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let id: String
    let labels: String?
    let percentEstimate: Double
    let percentMax: PercentMax
    let percentMin: Int
    let rank: Int?
    let text: String
    let vegan, vegetarian, hasSubIngredients: String?

    enum CodingKeys: String, CodingKey {
        case id, labels
        case percentEstimate = "percent_estimate"
        case percentMax = "percent_max"
        case percentMin = "percent_min"
        case rank, text, vegan, vegetarian
        case hasSubIngredients = "has_sub_ingredients"
    }
}

enum PercentMax: Codable {
    case double(Double)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(PercentMax.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for PercentMax"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - IngredientsAnalysis
struct IngredientsAnalysis: Codable {
    let enPalmOilContentUnknown, enVeganStatusUnknown, enVegetarianStatusUnknown: [String]

    enum CodingKeys: String, CodingKey {
        case enPalmOilContentUnknown = "en:palm-oil-content-unknown"
        case enVeganStatusUnknown = "en:vegan-status-unknown"
        case enVegetarianStatusUnknown = "en:vegetarian-status-unknown"
    }
}

// MARK: - Languages
struct Languages: Codable {
    let enEnglish, enFrench, enGerman: Int

    enum CodingKeys: String, CodingKey {
        case enEnglish = "en:english"
        case enFrench = "en:french"
        case enGerman = "en:german"
    }
}

// MARK: - LanguagesCodes
struct LanguagesCodes: Codable {
    let de, en, fr: Int
}

// MARK: - NutrientLevels
struct NutrientLevels: Codable {
    let fat, salt, saturatedFat, sugars: String

    enum CodingKeys: String, CodingKey {
        case fat, salt
        case saturatedFat = "saturated-fat"
        case sugars
    }
}

// MARK: - Nutriments
struct Nutriments: Codable {
    let carbohydrates, carbohydrates100G: Int
    let carbohydratesUnit: String
    let carbohydratesValue: Int
    let energy, energyKcal, energyKcal100G: Double
    let energyKcalPrepared, energyKcalPreparedServing: Int
    let energyKcalPreparedUnit: String
    let energyKcalPreparedValue: Int
    let energyKcalUnit: String
    let energyKcalValue: Double
    let energyKcalValueComputed: Int
    let energyKj, energyKj100G: Double
    let energyKjPrepared, energyKjPreparedServing: Int
    let energyKjPreparedUnit: String
    let energyKjPreparedValue: Int
    let energyKjUnit: String
    let energyKjValue: Double
    let energyKjValueComputed: Int
    let energy100G: Double
    let energyPrepared, energyPreparedServing: Int
    let energyPreparedUnit: String
    let energyPreparedValue: Int
    let energyUnit: String
    let energyValue: Double
    let fat, fat100G, fatPrepared, fatPreparedServing: Int
    let fatPreparedUnit: String
    let fatPreparedValue: Int
    let fatUnit: String
    let fatValue, fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100G: Int
    let fruitsVegetablesNutsEstimateFromIngredientsServing, novaGroup, novaGroup100G, novaGroupServing: Int
    let nutritionScoreFr, nutritionScoreFr100G, proteins, proteins100G: Int
    let proteinsUnit: String
    let proteinsValue: Int
    let salt, salt100G, saltPrepared, saltPreparedServing: Double
    let saltPreparedUnit: String
    let saltPreparedValue: Double
    let saltUnit: String
    let saltValue: Double
    let saturatedFat, saturatedFat100G: Int
    let saturatedFatUnit: String
    let saturatedFatValue: Int
    let sodium, sodium100G, sodiumPrepared, sodiumPreparedServing: Double
    let sodiumPreparedUnit: String
    let sodiumPreparedValue: Double
    let sodiumUnit: String
    let sodiumValue: Double
    let sugars, sugars100G: Int
    let sugarsUnit: String
    let sugarsValue: Int

    enum CodingKeys: String, CodingKey {
        case carbohydrates
        case carbohydrates100G = "carbohydrates_100g"
        case carbohydratesUnit = "carbohydrates_unit"
        case carbohydratesValue = "carbohydrates_value"
        case energy
        case energyKcal = "energy-kcal"
        case energyKcal100G = "energy-kcal_100g"
        case energyKcalPrepared = "energy-kcal_prepared"
        case energyKcalPreparedServing = "energy-kcal_prepared_serving"
        case energyKcalPreparedUnit = "energy-kcal_prepared_unit"
        case energyKcalPreparedValue = "energy-kcal_prepared_value"
        case energyKcalUnit = "energy-kcal_unit"
        case energyKcalValue = "energy-kcal_value"
        case energyKcalValueComputed = "energy-kcal_value_computed"
        case energyKj = "energy-kj"
        case energyKj100G = "energy-kj_100g"
        case energyKjPrepared = "energy-kj_prepared"
        case energyKjPreparedServing = "energy-kj_prepared_serving"
        case energyKjPreparedUnit = "energy-kj_prepared_unit"
        case energyKjPreparedValue = "energy-kj_prepared_value"
        case energyKjUnit = "energy-kj_unit"
        case energyKjValue = "energy-kj_value"
        case energyKjValueComputed = "energy-kj_value_computed"
        case energy100G = "energy_100g"
        case energyPrepared = "energy_prepared"
        case energyPreparedServing = "energy_prepared_serving"
        case energyPreparedUnit = "energy_prepared_unit"
        case energyPreparedValue = "energy_prepared_value"
        case energyUnit = "energy_unit"
        case energyValue = "energy_value"
        case fat
        case fat100G = "fat_100g"
        case fatPrepared = "fat_prepared"
        case fatPreparedServing = "fat_prepared_serving"
        case fatPreparedUnit = "fat_prepared_unit"
        case fatPreparedValue = "fat_prepared_value"
        case fatUnit = "fat_unit"
        case fatValue = "fat_value"
        case fruitsVegetablesLegumesEstimateFromIngredients100G = "fruits-vegetables-legumes-estimate-from-ingredients_100g"
        case fruitsVegetablesLegumesEstimateFromIngredientsServing = "fruits-vegetables-legumes-estimate-from-ingredients_serving"
        case fruitsVegetablesNutsEstimateFromIngredients100G = "fruits-vegetables-nuts-estimate-from-ingredients_100g"
        case fruitsVegetablesNutsEstimateFromIngredientsServing = "fruits-vegetables-nuts-estimate-from-ingredients_serving"
        case novaGroup = "nova-group"
        case novaGroup100G = "nova-group_100g"
        case novaGroupServing = "nova-group_serving"
        case nutritionScoreFr = "nutrition-score-fr"
        case nutritionScoreFr100G = "nutrition-score-fr_100g"
        case proteins
        case proteins100G = "proteins_100g"
        case proteinsUnit = "proteins_unit"
        case proteinsValue = "proteins_value"
        case salt
        case salt100G = "salt_100g"
        case saltPrepared = "salt_prepared"
        case saltPreparedServing = "salt_prepared_serving"
        case saltPreparedUnit = "salt_prepared_unit"
        case saltPreparedValue = "salt_prepared_value"
        case saltUnit = "salt_unit"
        case saltValue = "salt_value"
        case saturatedFat = "saturated-fat"
        case saturatedFat100G = "saturated-fat_100g"
        case saturatedFatUnit = "saturated-fat_unit"
        case saturatedFatValue = "saturated-fat_value"
        case sodium
        case sodium100G = "sodium_100g"
        case sodiumPrepared = "sodium_prepared"
        case sodiumPreparedServing = "sodium_prepared_serving"
        case sodiumPreparedUnit = "sodium_prepared_unit"
        case sodiumPreparedValue = "sodium_prepared_value"
        case sodiumUnit = "sodium_unit"
        case sodiumValue = "sodium_value"
        case sugars
        case sugars100G = "sugars_100g"
        case sugarsUnit = "sugars_unit"
        case sugarsValue = "sugars_value"
    }
}

// MARK: - Nutriscore
struct Nutriscore: Codable {
    let categoryAvailable: Int
    let data: DataClass
    let grade: String
    let nutrientsAvailable, nutriscoreApplicable, nutriscoreComputed, score: Int

    enum CodingKeys: String, CodingKey {
        case categoryAvailable = "category_available"
        case data, grade
        case nutrientsAvailable = "nutrients_available"
        case nutriscoreApplicable = "nutriscore_applicable"
        case nutriscoreComputed = "nutriscore_computed"
        case score
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let energy: Double?
    let energyPoints: Int?
    let energyValue: Double?
    let fiber, fiberPoints, fiberValue, fruitsVegetablesNutsColzaWalnutOliveOils: Int?
    let fruitsVegetablesNutsColzaWalnutOliveOilsPoints, fruitsVegetablesNutsColzaWalnutOliveOilsValue: Int?
    let isBeverage, isCheese: Int
    let isFat: Int?
    let isWater, negativePoints, positivePoints: Int
    let proteins, proteinsPoints, proteinsValue, saturatedFat: Int?
    let saturatedFatPoints, saturatedFatValue, sodium, sodiumPoints: Int?
    let sodiumValue, sugars, sugarsPoints, sugarsValue: Int?
    let grade: String?
    let score: Int?
    let components: Components?
    let countProteins: Int?
    let countProteinsReason: String?
    let isFatOilNutsSeeds, isRedMeatProduct, negativePointsMax, nonNutritiveSweetenersMax: Int?
    let positiveNutrients: [String]?
    let positivePointsMax, withNonNutritiveSweeteners: Int?

    enum CodingKeys: String, CodingKey {
        case energy
        case energyPoints = "energy_points"
        case energyValue = "energy_value"
        case fiber
        case fiberPoints = "fiber_points"
        case fiberValue = "fiber_value"
        case fruitsVegetablesNutsColzaWalnutOliveOils = "fruits_vegetables_nuts_colza_walnut_olive_oils"
        case fruitsVegetablesNutsColzaWalnutOliveOilsPoints = "fruits_vegetables_nuts_colza_walnut_olive_oils_points"
        case fruitsVegetablesNutsColzaWalnutOliveOilsValue = "fruits_vegetables_nuts_colza_walnut_olive_oils_value"
        case isBeverage = "is_beverage"
        case isCheese = "is_cheese"
        case isFat = "is_fat"
        case isWater = "is_water"
        case negativePoints = "negative_points"
        case positivePoints = "positive_points"
        case proteins
        case proteinsPoints = "proteins_points"
        case proteinsValue = "proteins_value"
        case saturatedFat = "saturated_fat"
        case saturatedFatPoints = "saturated_fat_points"
        case saturatedFatValue = "saturated_fat_value"
        case sodium
        case sodiumPoints = "sodium_points"
        case sodiumValue = "sodium_value"
        case sugars
        case sugarsPoints = "sugars_points"
        case sugarsValue = "sugars_value"
        case grade, score, components
        case countProteins = "count_proteins"
        case countProteinsReason = "count_proteins_reason"
        case isFatOilNutsSeeds = "is_fat_oil_nuts_seeds"
        case isRedMeatProduct = "is_red_meat_product"
        case negativePointsMax = "negative_points_max"
        case nonNutritiveSweetenersMax = "non_nutritive_sweeteners_max"
        case positiveNutrients = "positive_nutrients"
        case positivePointsMax = "positive_points_max"
        case withNonNutritiveSweeteners = "with_non_nutritive_sweeteners"
    }
}

// MARK: - Components
struct Components: Codable {
    let negative, positive: [Tive]
}

// MARK: - Tive
struct Tive: Codable {
    let id: String
    let points: Int
    let pointsMax: Int?
    let unit: String?
    let value: Double

    enum CodingKeys: String, CodingKey {
        case id, points
        case pointsMax = "points_max"
        case unit, value
    }
}

// MARK: - NutriscoreData
struct NutriscoreData: Codable {
    let energy: Double
    let energyPoints: Int
    let energyValue: Double
    let fiber, fiberPoints, fiberValue, fruitsVegetablesNutsColzaWalnutOliveOils: Int
    let fruitsVegetablesNutsColzaWalnutOliveOilsPoints, fruitsVegetablesNutsColzaWalnutOliveOilsValue, isBeverage, isCheese: Int
    let isFat, isWater, negativePoints, positivePoints: Int
    let proteins, proteinsPoints, proteinsValue, saturatedFat: Int
    let saturatedFatPoints, saturatedFatValue, sodium, sodiumPoints: Int
    let sodiumValue, sugars, sugarsPoints, sugarsValue: Int
    let grade: String?
    let score: Int?

    enum CodingKeys: String, CodingKey {
        case energy
        case energyPoints = "energy_points"
        case energyValue = "energy_value"
        case fiber
        case fiberPoints = "fiber_points"
        case fiberValue = "fiber_value"
        case fruitsVegetablesNutsColzaWalnutOliveOils = "fruits_vegetables_nuts_colza_walnut_olive_oils"
        case fruitsVegetablesNutsColzaWalnutOliveOilsPoints = "fruits_vegetables_nuts_colza_walnut_olive_oils_points"
        case fruitsVegetablesNutsColzaWalnutOliveOilsValue = "fruits_vegetables_nuts_colza_walnut_olive_oils_value"
        case isBeverage = "is_beverage"
        case isCheese = "is_cheese"
        case isFat = "is_fat"
        case isWater = "is_water"
        case negativePoints = "negative_points"
        case positivePoints = "positive_points"
        case proteins
        case proteinsPoints = "proteins_points"
        case proteinsValue = "proteins_value"
        case saturatedFat = "saturated_fat"
        case saturatedFatPoints = "saturated_fat_points"
        case saturatedFatValue = "saturated_fat_value"
        case sodium
        case sodiumPoints = "sodium_points"
        case sodiumValue = "sodium_value"
        case sugars
        case sugarsPoints = "sugars_points"
        case sugarsValue = "sugars_value"
        case grade, score
    }
}

// MARK: - ProductPackaging
struct ProductPackaging: Codable {
    let material: String?
    let shape: String
}

// MARK: - PackagingsMaterials
struct PackagingsMaterials: Codable {
    let all, enPlastic, enUnknown: Scores

    enum CodingKeys: String, CodingKey {
        case all
        case enPlastic = "en:plastic"
        case enUnknown = "en:unknown"
    }
}

// MARK: - SelectedImages
struct SelectedImages: Codable {
    let front, ingredients: Front
    let nutrition: Nutrition
    let packaging: Front
}

// MARK: - Front
struct Front: Codable {
    let display, small, thumb: FrontDisplay
}

// MARK: - FrontDisplay
struct FrontDisplay: Codable {
    let fr: String
}

// MARK: - Nutrition
struct Nutrition: Codable {
    let display, small, thumb: NutritionDisplay
}

// MARK: - NutritionDisplay
struct NutritionDisplay: Codable {
    let de, fr: String
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

