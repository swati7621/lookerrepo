connection: "first_sf"

# include all the views
include: "/views/**/*.view"

datagroup: first_sf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: first_sf_default_datagroup

explore: customer {}

explore: jcustomer {}

explore: jlineitem {}

explore: jnation {}

explore: jorders {}

explore: jpart {}

explore: jpartsupp {}

explore: jregion {}

explore: jsupplier {}

explore: lineitem {}

explore: nation {}

explore: orders {}

explore: part {}

explore: partsupp {}

explore: region {}

explore: supplier {}
