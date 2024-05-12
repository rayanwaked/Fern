// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let productData = try? JSONDecoder().decode(ProductData.self, from: jsonData)

import Foundation

// TODO: - Expand JSONAny flexability as OpenFoodFacts database exhibits high inconsistency regardings types

// MARK: - ProductData
struct ProductData: Codable {
    let code: String?
    let product: Product?
    let status: Int?
    let statusVerbose: String?

    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
}

// MARK: - Product
struct Product: Codable {
    let id: String?
    let keywords: [String]?
    let addedCountriesTags, additivesDebugTags: [JSONAny]?
    let additivesN, additivesOldN: Int?
    let additivesOldTags, additivesOriginalTags, additivesPrevOriginalTags, additivesTags: [JSONAny]?
    let allergens, allergensFromIngredients, allergensFromUser: String?
    let allergensHierarchy: [String]?
    let allergensLc: String?
    let allergensTags: [String]?
    let aminoAcidsPrevTags, aminoAcidsTags: [JSONAny]?
    let brands: String?
    let brandsTags: [String]?
    let carbonFootprintPercentOfKnownIngredients: Double?
    let categories: String?
    let categoriesHierarchy: [String]?
    let categoriesLc, categoriesOld: String?
    let categoriesProperties: CategoriesProperties?
    let categoriesPropertiesTags, categoriesTags: [String]?
    let categoryProperties: CategoryProperties?
    let checkersTags: [JSONAny]?
    let ciqualFoodNameTags: [String]?
    let citiesTags: [JSONAny]?
    let code: String?
    let codesTags: [String]?
    let comparedToCategory: String?
    let complete, completedT, completeness: Int?
    let conservationConditions, conservationConditionsFr: String?
    let correctorsTags: [String]?
    let countries, countriesBeforescanbot: String?
    let countriesHierarchy: [String]?
    let countriesLc: String?
    let countriesTags: [String]?
    let createdT: Int?
    let creator: String?
    let dataQualityBugsTags: [JSONAny]?
    let dataQualityErrorsTags, dataQualityInfoTags, dataQualityTags, dataQualityWarningsTags: [String]?
    let dataSources: String?
    let dataSourcesTags, debugParamSortedLangs: [String]?
    let ecoscoreData: EcoscoreData?
    let ecoscoreGrade: EcoscoreGrade?
    let ecoscoreScore: Int?
    let ecoscoreTags: [EcoscoreGrade]?
    let editorsTags: [String]?
    let embCodes, embCodesOrig: String?
    let embCodesTags: [JSONAny]?
    let entryDatesTags: [String]?
    let environmentImpactLevel: String?
    let environmentImpactLevelTags: [JSONAny]?
    let expirationDate: String?
    let foodGroupsTags: [JSONAny]?
    let genericName, genericNameFr: String?
    let grades: Grades?
    let productid: String?
    let imageFrontSmallurl, imageFrontThumburl, imageFronturl, imageIngredientsSmallurl: String?
    let imageIngredientsThumburl, imageIngredientsurl, imageNutritionSmallurl, imageNutritionThumburl: String?
    let imageNutritionurl, imagePackagingSmallurl, imagePackagingThumburl, imagePackagingurl: String?
    let imageSmallurl, imageThumburl, imageurl: String?
    let images: Images?
    let informersTags: [String]?
    let ingredients: [Ingredient]?
    let ingredientsAnalysis: Grades?
    let ingredientsAnalysisTags, ingredientsDebug: [String]?
    let ingredientsFromOrThatMayBeFromPalmOilN, ingredientsFromPalmOilN: Int?
    let ingredientsFromPalmOilTags: [JSONAny]?
    let ingredientsHierarchy, ingredientsidsDebug: [String]?
    let ingredientsLc: String?
    let ingredientsN: Int?
    let ingredientsNTags, ingredientsOriginalTags: [String]?
    let ingredientsPercentAnalysis: Int?
    let ingredientsTags: [String]?
    let ingredientsText, ingredientsTextDebug, ingredientsTextFr, ingredientsTextWithAllergens: String?
    let ingredientsTextWithAllergensFr: String?
    let ingredientsThatMayBeFromPalmOilN: Int?
    let ingredientsThatMayBeFromPalmOilTags: [JSONAny]?
    let ingredientsWithSpecifiedPercentN, ingredientsWithSpecifiedPercentSum, ingredientsWithUnspecifiedPercentN, ingredientsWithUnspecifiedPercentSum: Int?
    let ingredientsWithoutCiqualCodes: [JSONAny]?
    let ingredientsWithoutCiqualCodesN: Int?
    let interfaceVersionCreated, interfaceVersionModified: String?
    let knownIngredientsN: Int?
    let labels: String?
    let labelsHierarchy: [String]?
    let labelsLc, labelsOld: String?
    let labelsTags: [String]?
    let lang: String?
    let languages: Languages?
    let languagesCodes: LanguagesCodes?
    let languagesHierarchy, languagesTags, lastEditDatesTags: [String]?
    let lastEditor: String?
    let lastImageDatesTags: [String]?
    let lastImageT: Int?
    let lastModifiedBy: String?
    let lastModifiedT, lastUpdatedT: Int?
    let lc: String?
    let link: String?
    let mainCountriesTags: [JSONAny]?
    let manufacturingPlaces: String?
    let manufacturingPlacesTags: [String]?
    let maxImgid: String?
    let mineralsPrevTags, mineralsTags: [JSONAny]?
    let miscTags: [String]?
    let noNutritionData: String?
    let novaGroup: Int?
    let novaGroupDebug, novaGroups: String?
    let novaGroupsMarkers: Grades?
    let novaGroupsTags: [String]?
    let nucleotidesPrevTags, nucleotidesTags: [JSONAny]?
    let nutrientLevels: Grades?
    let nutrientLevelsTags: [JSONAny]?
    let nutriments: Nutriments?
    let nutrimentsEstimated: [String: Double]?
    let nutriscore: [String: Nutriscore]?
    let nutriscore2021_Tags, nutriscore2023_Tags: [String]?
    let nutriscoreGrade, nutriscoreGradeProducer: String?
    let nutriscoreTags: [String]?
    let nutriscoreVersion, nutritionData, nutritionDataPer, nutritionDataPrepared: String?
    let nutritionDataPreparedPer, nutritionGradeFr, nutritionGrades: String?
    let nutritionGradesTags: [String]?
    let nutritionScoreBeverage: Int?
    let nutritionScoreDebug: String?
    let nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients, nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: Int?
    let obsolete, obsoleteSinceDate, origin, originFr: String?
    let origins: String?
    let originsHierarchy: [String]?
    let originsLc, originsOld: String?
    let originsTags: [String]?
    let otherNutritionalSubstancesTags: [JSONAny]?
    let owner: String?
    let ownerFields: [String: Int]?
    let ownersTags, packaging: String?
    let packagingHierarchy: [String]?
    let packagingLc: String?
    let packagingMaterialsTags: [String]?
    let packagingOld, packagingOldBeforeTaxonomization: String?
    let packagingRecyclingTags, packagingShapesTags, packagingTags: [String]?
    let packagingText, packagingTextFr: String?
    let packagings: [ProductPackaging]?
    let packagingsComplete: Int?
    let packagingsMaterials: PackagingsMaterials?
    let packagingsN: Int?
    let photographersTags: [String]?
    let pnnsGroups1: String?
    let pnnsGroups1_Tags: [String]?
    let pnnsGroups2: String?
    let pnnsGroups2_Tags: [String]?
    let popularityKey: Int?
    let popularityTags: [String]?
    let preparation, preparationFr, productName: String?
    let productNameDebugTags: [JSONAny]?
    let productNameFr, productQuantity, productQuantityUnit, purchasePlaces: String?
    let purchasePlacesTags: [String]?
    let quantity: String?
    let removedCountriesTags: [JSONAny]?
    let rev, scansN: Int?
    let scores: Grades?
    let selectedImages: SelectedImages?
    let servingSize: String?
    let sortkey: Int?
    let sources: [Source]?
    let states: String?
    let statesHierarchy, statesTags: [String]?
    let stores: String?
    let storesTags: [String]?
    let teams: String?
    let teamsTags: [String]?
    let traces, tracesFromIngredients, tracesFromUser: String?
    let tracesHierarchy: [JSONAny]?
    let tracesLc: String?
    let tracesTags: [JSONAny]?
    let uniqueScansN, unknownIngredientsN: Int?
    let unknownNutrientsTags: [JSONAny]?
    let updateKey: String?
    let vitaminsPrevTags, vitaminsTags, weighersTags, weightersTags: [JSONAny]?

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
        case carbonFootprintPercentOfKnownIngredients = "carbon_footprint_percent_of_known_ingredients"
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
        case conservationConditions = "conservation_conditions"
        case conservationConditionsFr = "conservation_conditions_fr"
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
        case ecoscoreScore = "ecoscore_score"
        case ecoscoreTags = "ecoscore_tags"
        case editorsTags = "editors_tags"
        case embCodes = "emb_codes"
        case embCodesOrig = "emb_codes_orig"
        case embCodesTags = "emb_codes_tags"
        case entryDatesTags = "entry_dates_tags"
        case environmentImpactLevel = "environment_impact_level"
        case environmentImpactLevelTags = "environment_impact_level_tags"
        case expirationDate = "expiration_date"
        case foodGroupsTags = "food_groups_tags"
        case genericName = "generic_name"
        case genericNameFr = "generic_name_fr"
        case grades
        case productid = "id"
        case imageFrontSmallurl = "image_front_small_url"
        case imageFrontThumburl = "image_front_thumb_url"
        case imageFronturl = "image_front_url"
        case imageIngredientsSmallurl = "image_ingredients_small_url"
        case imageIngredientsThumburl = "image_ingredients_thumb_url"
        case imageIngredientsurl = "image_ingredients_url"
        case imageNutritionSmallurl = "image_nutrition_small_url"
        case imageNutritionThumburl = "image_nutrition_thumb_url"
        case imageNutritionurl = "image_nutrition_url"
        case imagePackagingSmallurl = "image_packaging_small_url"
        case imagePackagingThumburl = "image_packaging_thumb_url"
        case imagePackagingurl = "image_packaging_url"
        case imageSmallurl = "image_small_url"
        case imageThumburl = "image_thumb_url"
        case imageurl = "image_url"
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
        case ingredientsidsDebug = "ingredients_ids_debug"
        case ingredientsLc = "ingredients_lc"
        case ingredientsN = "ingredients_n"
        case ingredientsNTags = "ingredients_n_tags"
        case ingredientsOriginalTags = "ingredients_original_tags"
        case ingredientsPercentAnalysis = "ingredients_percent_analysis"
        case ingredientsTags = "ingredients_tags"
        case ingredientsText = "ingredients_text"
        case ingredientsTextDebug = "ingredients_text_debug"
        case ingredientsTextFr = "ingredients_text_fr"
        case ingredientsTextWithAllergens = "ingredients_text_with_allergens"
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
        case nutriments
        case nutrimentsEstimated = "nutriments_estimated"
        case nutriscore
        case nutriscore2021_Tags = "nutriscore_2021_tags"
        case nutriscore2023_Tags = "nutriscore_2023_tags"
        case nutriscoreGrade = "nutriscore_grade"
        case nutriscoreGradeProducer = "nutriscore_grade_producer"
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
        case obsolete
        case obsoleteSinceDate = "obsolete_since_date"
        case origin
        case originFr = "origin_fr"
        case origins
        case originsHierarchy = "origins_hierarchy"
        case originsLc = "origins_lc"
        case originsOld = "origins_old"
        case originsTags = "origins_tags"
        case otherNutritionalSubstancesTags = "other_nutritional_substances_tags"
        case owner
        case ownerFields = "owner_fields"
        case ownersTags = "owners_tags"
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
        case preparation
        case preparationFr = "preparation_fr"
        case productName = "product_name"
        case productNameDebugTags = "product_name_debug_tags"
        case productNameFr = "product_name_fr"
        case productQuantity = "product_quantity"
        case productQuantityUnit = "product_quantity_unit"
        case purchasePlaces = "purchase_places"
        case purchasePlacesTags = "purchase_places_tags"
        case quantity
        case removedCountriesTags = "removed_countries_tags"
        case rev
        case scansN = "scans_n"
        case scores
        case selectedImages = "selected_images"
        case servingSize = "serving_size"
        case sortkey, sources, states
        case statesHierarchy = "states_hierarchy"
        case statesTags = "states_tags"
        case stores
        case storesTags = "stores_tags"
        case teams
        case teamsTags = "teams_tags"
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
        case weightersTags = "weighters_tags"
    }
}

// MARK: - CategoriesProperties
struct CategoriesProperties: Codable {
    let agribalyseFoodCodeEn, ciqualFoodCodeEn: String?

    enum CodingKeys: String, CodingKey {
        case agribalyseFoodCodeEn = "agribalyse_food_code:en"
        case ciqualFoodCodeEn = "ciqual_food_code:en"
    }
}

// MARK: - CategoryProperties
struct CategoryProperties: Codable {
    let ciqualFoodNameEn, ciqualFoodNameFr: String?

    enum CodingKeys: String, CodingKey {
        case ciqualFoodNameEn = "ciqual_food_name:en"
        case ciqualFoodNameFr = "ciqual_food_name:fr"
    }
}

// MARK: - EcoscoreData
struct EcoscoreData: Codable {
    let adjustments: Adjustments?
    let agribalyse: EcoscoreDataAgribalyse?
    let grade: EcoscoreGrade?
    let grades: [String: EcoscoreGrade]?
    let missing: Missing?
    let missingDataWarning: Int?
    let previousData: PreviousData?
    let score: Int?
    let scores: [String: Int]?
    let status: String?

    enum CodingKeys: String, CodingKey {
        case adjustments, agribalyse, grade, grades, missing
        case missingDataWarning = "missing_data_warning"
        case previousData = "previous_data"
        case score, scores, status
    }
}

// MARK: - Adjustments
struct Adjustments: Codable {
    let originsOfIngredients: OriginsOfIngredients?
    let packaging: AdjustmentsPackaging?
    let productionSystem: ProductionSystem?
    let threatenedSpecies: Grades?

    enum CodingKeys: String, CodingKey {
        case originsOfIngredients = "origins_of_ingredients"
        case packaging
        case productionSystem = "production_system"
        case threatenedSpecies = "threatened_species"
    }
}

// MARK: - OriginsOfIngredients
struct OriginsOfIngredients: Codable {
    let aggregatedOrigins: [AggregatedOrigin]?
    let epiScore, epiValue: Int?
    let originsFromCategories, originsFromOriginsField: [String]?
    let transportationScore: Int?
    let transportationScores: [String: Int]?
    let transportationValue: Int?
    let transportationValues: [String: Int]?
    let value: Int?
    let values: [String: Int]?

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
    let epiScore, origin: String?
    let percent: Int?
    let transportationScore: JSONNull?

    enum CodingKeys: String, CodingKey {
        case epiScore = "epi_score"
        case origin, percent
        case transportationScore = "transportation_score"
    }
}

// MARK: - AdjustmentsPackaging
struct AdjustmentsPackaging: Codable {
    let nonRecyclableAndNonBiodegradableMaterials: Int?
    let packagings: [PackagingPackaging]?
    let score: Double?
    let value: Int?
    let warning: String?

    enum CodingKeys: String, CodingKey {
        case nonRecyclableAndNonBiodegradableMaterials = "non_recyclable_and_non_biodegradable_materials"
        case packagings, score, value, warning
    }
}

// MARK: - PackagingPackaging
struct PackagingPackaging: Codable {
    let ecoscoreMaterialScore: Int?
    let ecoscoreShapeRatio: Double?
    let material: String?
    let numberOfUnits: Int?
    let recycling, shape, nonRecyclableAndNonBiodegradable: String?

    enum CodingKeys: String, CodingKey {
        case ecoscoreMaterialScore = "ecoscore_material_score"
        case ecoscoreShapeRatio = "ecoscore_shape_ratio"
        case material
        case numberOfUnits = "number_of_units"
        case recycling, shape
        case nonRecyclableAndNonBiodegradable = "non_recyclable_and_non_biodegradable"
    }
}

// MARK: - ProductionSystem
struct ProductionSystem: Codable {
    let labels: [String]?
    let value: Int?
}

// MARK: - Grades
struct Grades: Codable {
}

// MARK: - EcoscoreDataAgribalyse
struct EcoscoreDataAgribalyse: Codable {
    let agribalyseFoodCode: String?
    let co2Agriculture, co2Consumption, co2Distribution, co2Packaging: Double?
    let co2Processing, co2Total, co2Transportation: Double?
    let code, dqr: String?
    let efAgriculture, efConsumption, efDistribution, efPackaging: Double?
    let efProcessing, efTotal, efTransportation: Double?
    let isBeverage: Int?
    let nameEn, nameFr: String?
    let score: Int?
    let version: String?

    enum CodingKeys: String, CodingKey {
        case agribalyseFoodCode = "agribalyse_food_code"
        case co2Agriculture = "co2_agriculture"
        case co2Consumption = "co2_consumption"
        case co2Distribution = "co2_distribution"
        case co2Packaging = "co2_packaging"
        case co2Processing = "co2_processing"
        case co2Total = "co2_total"
        case co2Transportation = "co2_transportation"
        case code, dqr
        case efAgriculture = "ef_agriculture"
        case efConsumption = "ef_consumption"
        case efDistribution = "ef_distribution"
        case efPackaging = "ef_packaging"
        case efProcessing = "ef_processing"
        case efTotal = "ef_total"
        case efTransportation = "ef_transportation"
        case isBeverage = "is_beverage"
        case nameEn = "name_en"
        case nameFr = "name_fr"
        case score, version
    }
}

enum EcoscoreGrade: String, Codable {
    case a = "a"
}

// MARK: - Missing
struct Missing: Codable {
    let packagings: Int?
}

// MARK: - PreviousData
struct PreviousData: Codable {
    let agribalyse: PreviousDataAgribalyse?
    let grade: String?
    let score: Int?
}

// MARK: - PreviousDataAgribalyse
struct PreviousDataAgribalyse: Codable {
    let agribalyseFoodCode: String?
    let co2Agriculture: Double?
    let co2Consumption: Int?
    let co2Distribution, co2Packaging, co2Processing, co2Total: Double?
    let co2Transportation: Double?
    let code, dqr: String?
    let efAgriculture: Double?
    let efConsumption: Int?
    let efDistribution, efPackaging, efProcessing, efTotal: Double?
    let efTransportation: Double?
    let isBeverage: Int?
    let nameEn, nameFr: String?
    let score: Int?

    enum CodingKeys: String, CodingKey {
        case agribalyseFoodCode = "agribalyse_food_code"
        case co2Agriculture = "co2_agriculture"
        case co2Consumption = "co2_consumption"
        case co2Distribution = "co2_distribution"
        case co2Packaging = "co2_packaging"
        case co2Processing = "co2_processing"
        case co2Total = "co2_total"
        case co2Transportation = "co2_transportation"
        case code, dqr
        case efAgriculture = "ef_agriculture"
        case efConsumption = "ef_consumption"
        case efDistribution = "ef_distribution"
        case efPackaging = "ef_packaging"
        case efProcessing = "ef_processing"
        case efTotal = "ef_total"
        case efTransportation = "ef_transportation"
        case isBeverage = "is_beverage"
        case nameEn = "name_en"
        case nameFr = "name_fr"
        case score
    }
}

// MARK: - Images
struct Images: Codable {
    let the1, the2: The1?
    let the9, the10, the11, the12: The10?
    let the13, the14, the15, the16: The10?
    let the17, the18, the19, the20: The10?
    let the21, the22, the23, the24: The10?
    let the25, the26, the27, the28: The10?
    let the29, the30, the31, the32: The10?
    let the33, the34, the35: The10?
    let frontFr: FrontFr?
    let ingredientsFr: IngredientsFr?
    let nutritionFr, packagingFr: Fr?

    enum CodingKeys: String, CodingKey {
        case the1 = "1"
        case the2 = "2"
        case the9 = "9"
        case the10 = "10"
        case the11 = "11"
        case the12 = "12"
        case the13 = "13"
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
        case the33 = "33"
        case the34 = "34"
        case the35 = "35"
        case frontFr = "front_fr"
        case ingredientsFr = "ingredients_fr"
        case nutritionFr = "nutrition_fr"
        case packagingFr = "packaging_fr"
    }
}

// MARK: - FrontFr
struct FrontFr: Codable {
    let angle, coordinatesImageSize, geometry, imgid: String?
    let normalize, rev: String?
    let sizes: FrontFrSizes?
    let whiteMagic, x1, x2, y1: String?
    let y2: String?

    enum CodingKeys: String, CodingKey {
        case angle
        case coordinatesImageSize = "coordinates_image_size"
        case geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - FrontFrSizes
struct FrontFrSizes: Codable {
    let the100, the200, the400, full: The100?

    enum CodingKeys: String, CodingKey {
        case the100 = "100"
        case the200 = "200"
        case the400 = "400"
        case full
    }
}

// MARK: - The100
struct The100: Codable {
    let h, w: Int?
}

// MARK: - IngredientsFr
struct IngredientsFr: Codable {
    let angle, coordinatesImageSize, geometry, imgid: String?
    let normalize: JSONNull?
    let rev: String?
    let sizes: FrontFrSizes?
    let whiteMagic: JSONNull?
    let x1, x2, y1, y2: String?

    enum CodingKeys: String, CodingKey {
        case angle
        case coordinatesImageSize = "coordinates_image_size"
        case geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - Fr
struct Fr: Codable {
    let angle: Int?
    let coordinatesImageSize, geometry, imgid: String?
    let normalize: JSONNull?
    let rev: String?
    let sizes: FrontFrSizes?
    let whiteMagic: JSONNull?
    let x1, x2, y1, y2: String?

    enum CodingKeys: String, CodingKey {
        case angle
        case coordinatesImageSize = "coordinates_image_size"
        case geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - The1
struct The1: Codable {
    let sizes: The1_Sizes?
    let uploadedT, uploader: String?

    enum CodingKeys: String, CodingKey {
        case sizes
        case uploadedT = "uploaded_t"
        case uploader
    }
}

// MARK: - The1_Sizes
struct The1_Sizes: Codable {
    let the100, the400, full: The100?

    enum CodingKeys: String, CodingKey {
        case the100 = "100"
        case the400 = "400"
        case full
    }
}

// MARK: - The10
struct The10: Codable {
    let sizes: The1_Sizes?
    let uploadedT: Int?
    let uploader: String?

    enum CodingKeys: String, CodingKey {
        case sizes
        case uploadedT = "uploaded_t"
        case uploader
    }
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let ciqualFoodCode, id: String?
    let percentEstimate, percentMax, percentMin, rank: Int?
    let text, vegan, vegetarian: String?

    enum CodingKeys: String, CodingKey {
        case ciqualFoodCode = "ciqual_food_code"
        case id
        case percentEstimate = "percent_estimate"
        case percentMax = "percent_max"
        case percentMin = "percent_min"
        case rank, text, vegan, vegetarian
    }
}

// MARK: - Languages
struct Languages: Codable {
    let enFrench: Int?

    enum CodingKeys: String, CodingKey {
        case enFrench = "en:french"
    }
}

// MARK: - LanguagesCodes
struct LanguagesCodes: Codable {
    let fr: Int?
}

// MARK: - Nutriments
struct Nutriments: Codable {
    let carbohydrates, carbohydrates100G: Int?
    let carbohydratesPrepared, carbohydratesPreparedServing: Double?
    let carbohydratesPreparedUnit: String?
    let carbohydratesPreparedValue: Double?
    let carbohydratesUnit: String?
    let carbohydratesValue: Int?
    let carbonFootprintFromKnownIngredientsProduct, carbonFootprintFromKnownIngredientsServing: Double?
    let energy, energyKcal, energyKcal100G, energyKcalPrepared: Int?
    let energyKcalPreparedServing: Int?
    let energyKcalPreparedUnit: String?
    let energyKcalPreparedValue: Int?
    let energyKcalUnit: String?
    let energyKcalValue: Int?
    let energyKcalValueComputed: Double?
    let energyKj, energyKj100G, energyKjPrepared, energyKjPreparedServing: Int?
    let energyKjPreparedUnit: String?
    let energyKjPreparedValue: Int?
    let energyKjUnit: String?
    let energyKjValue, energyKjValueComputed, energy100G, energyPrepared: Int?
    let energyPreparedServing: Int?
    let energyPreparedUnit: String?
    let energyPreparedValue: Int?
    let energyUnit: String?
    let energyValue: Int?
    let fat, fat100G: Double?
    let fatPrepared, fatPreparedServing: Int?
    let fatPreparedUnit: String?
    let fatPreparedValue: Int?
    let fatUnit: String?
    let fatValue: Double?
    let fiber, fiber100G: Int?
    let fiberPrepared, fiberPreparedServing: Double?
    let fiberPreparedUnit: String?
    let fiberPreparedValue: Double?
    let fiberUnit: String?
    let fiberValue, fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100G: Int?
    let fruitsVegetablesNutsEstimateFromIngredientsServing, novaGroup, novaGroup100G, novaGroupServing: Int?
    let proteins, proteins100G, proteinsPrepared, proteinsPreparedServing: Double?
    let proteinsPreparedUnit: String?
    let proteinsPreparedValue: Double?
    let proteinsUnit: String?
    let proteinsValue, salt, salt100G, saltPrepared: Double?
    let saltPreparedServing: Double?
    let saltPreparedUnit: String?
    let saltPreparedValue: Double?
    let saltUnit: String?
    let saltValue, saturatedFat, saturatedFat100G: Double?
    let saturatedFatModifier: String?
    let saturatedFatPrepared, saturatedFatPreparedServing: Int?
    let saturatedFatPreparedUnit: String?
    let saturatedFatPreparedValue: Int?
    let saturatedFatUnit: String?
    let saturatedFatValue, sodium, sodium100G, sodiumPrepared: Double?
    let sodiumPreparedServing: Double?
    let sodiumPreparedUnit: String?
    let sodiumPreparedValue: Double?
    let sodiumUnit: String?
    let sodiumValue: Double?
    let sugars, sugars100G: Int?
    let sugarsPrepared, sugarsPreparedServing: Double?
    let sugarsPreparedUnit: String?
    let sugarsPreparedValue: Double?
    let sugarsUnit: String?
    let sugarsValue: Int?

    enum CodingKeys: String, CodingKey {
        case carbohydrates
        case carbohydrates100G = "carbohydrates_100g"
        case carbohydratesPrepared = "carbohydrates_prepared"
        case carbohydratesPreparedServing = "carbohydrates_prepared_serving"
        case carbohydratesPreparedUnit = "carbohydrates_prepared_unit"
        case carbohydratesPreparedValue = "carbohydrates_prepared_value"
        case carbohydratesUnit = "carbohydrates_unit"
        case carbohydratesValue = "carbohydrates_value"
        case carbonFootprintFromKnownIngredientsProduct = "carbon-footprint-from-known-ingredients_product"
        case carbonFootprintFromKnownIngredientsServing = "carbon-footprint-from-known-ingredients_serving"
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
        case fiber
        case fiber100G = "fiber_100g"
        case fiberPrepared = "fiber_prepared"
        case fiberPreparedServing = "fiber_prepared_serving"
        case fiberPreparedUnit = "fiber_prepared_unit"
        case fiberPreparedValue = "fiber_prepared_value"
        case fiberUnit = "fiber_unit"
        case fiberValue = "fiber_value"
        case fruitsVegetablesLegumesEstimateFromIngredients100G = "fruits-vegetables-legumes-estimate-from-ingredients_100g"
        case fruitsVegetablesLegumesEstimateFromIngredientsServing = "fruits-vegetables-legumes-estimate-from-ingredients_serving"
        case fruitsVegetablesNutsEstimateFromIngredients100G = "fruits-vegetables-nuts-estimate-from-ingredients_100g"
        case fruitsVegetablesNutsEstimateFromIngredientsServing = "fruits-vegetables-nuts-estimate-from-ingredients_serving"
        case novaGroup = "nova-group"
        case novaGroup100G = "nova-group_100g"
        case novaGroupServing = "nova-group_serving"
        case proteins
        case proteins100G = "proteins_100g"
        case proteinsPrepared = "proteins_prepared"
        case proteinsPreparedServing = "proteins_prepared_serving"
        case proteinsPreparedUnit = "proteins_prepared_unit"
        case proteinsPreparedValue = "proteins_prepared_value"
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
        case saturatedFatModifier = "saturated-fat_modifier"
        case saturatedFatPrepared = "saturated-fat_prepared"
        case saturatedFatPreparedServing = "saturated-fat_prepared_serving"
        case saturatedFatPreparedUnit = "saturated-fat_prepared_unit"
        case saturatedFatPreparedValue = "saturated-fat_prepared_value"
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
        case sugarsPrepared = "sugars_prepared"
        case sugarsPreparedServing = "sugars_prepared_serving"
        case sugarsPreparedUnit = "sugars_prepared_unit"
        case sugarsPreparedValue = "sugars_prepared_value"
        case sugarsUnit = "sugars_unit"
        case sugarsValue = "sugars_value"
    }
}

// MARK: - Nutriscore
struct Nutriscore: Codable {
    let categoryAvailable: Int?
    let data: [String: Double]?
    let grade: String?
    let nutrientsAvailable, nutriscoreApplicable, nutriscoreComputed: Int?

    enum CodingKeys: String, CodingKey {
        case categoryAvailable = "category_available"
        case data, grade
        case nutrientsAvailable = "nutrients_available"
        case nutriscoreApplicable = "nutriscore_applicable"
        case nutriscoreComputed = "nutriscore_computed"
    }
}

// MARK: - ProductPackaging
struct ProductPackaging: Codable {
    let material: String?
    let numberOfUnits: Int?
    let recycling, shape: String?

    enum CodingKeys: String, CodingKey {
        case material
        case numberOfUnits = "number_of_units"
        case recycling, shape
    }
}

// MARK: - PackagingsMaterials
struct PackagingsMaterials: Codable {
    let all, enGlass, enMetal, enPlastic: Grades?
    let enUnknown: Grades?

    enum CodingKeys: String, CodingKey {
        case all
        case enGlass = "en:glass"
        case enMetal = "en:metal"
        case enPlastic = "en:plastic"
        case enUnknown = "en:unknown"
    }
}

// MARK: - SelectedImages
struct SelectedImages: Codable {
    let front, ingredients, nutrition, packaging: Front?
}

// MARK: - Front
struct Front: Codable {
    let display, small, thumb: Display?
}

// MARK: - Display
struct Display: Codable {
    let fr: String?
}

// MARK: - Source
struct Source: Codable {
    let fields: [String]?
    let id: String?
    let images: [JSONAny]?
    let importT, manufacturer: Int?
    let name, url: JSONNull?

    enum CodingKeys: String, CodingKey {
        case fields, id, images
        case importT = "import_t"
        case manufacturer, name, url
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
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
