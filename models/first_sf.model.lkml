connection: "first_sf"

# include all the views
include: "/TPCDS_SF100TCL/**/*.view"

datagroup: first_sf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: first_sf_default_datagroup

explore: customer {
  join: call_center {
    type: left_outer
    sql_on: 1=1 ;;
  }

  join: catalog_returns {
    type: left_outer
    sql_on: 1=1 ;;
  }

  join: date_dim {
    type: left_outer
    sql_on: 1=1 ;;
  }

  join: inventory {
    type: left_outer
    sql_on: 1=1 ;;
  }

  join: item {
    type: left_outer
    sql_on: 1=1 ;;
  }

  join: catalog_sales {
    type: left_outer
    sql_on: 1=1 ;;
  }

}
