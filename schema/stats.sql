ANALYZE VERBOSE steam;
SELECT count(*) AS div_cnt FROM steam;

ANALYZE VERBOSE steam_stats;
SELECT count(*) AS sch_cnt FROM steam_stats;

ANALYZE VERBOSE steam_support_info;
SELECT count(*) AS enr_cnt FROM steam_support_info;

ANALYZE VERBOSE steam_requirements_data;
SELECT count(*) AS col_cnt FROM steam_requirements_data;

ANALYZE VERBOSE steam_description_data;
SELECT count(*) AS col_cnt FROM steam_description_data;

ANALYZE VERBOSE steam_media_data;
SELECT count(*) AS col_cnt FROM steam_media_data;

ANALYZE VERBOSE platform_type;
SELECT count(*) AS col_cnt FROM platform_type;

ANALYZE VERBOSE category_type;
SELECT count(*) AS col_cnt FROM category_type;

ANALYZE VERBOSE steamspy_tags_type;
SELECT count(*) AS col_cnt FROM steamspy_tags_type;
