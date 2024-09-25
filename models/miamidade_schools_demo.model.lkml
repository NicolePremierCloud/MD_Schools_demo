connection: "miamidade-schools"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: miamidade_schools_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: miamidade_schools_demo_default_datagroup

explore: miami_dade_schools {}
