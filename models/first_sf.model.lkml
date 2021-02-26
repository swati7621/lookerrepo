connection: "first_sf"

# include all the views
include: "/TPCDS_SF100TCL/**/*.view"

datagroup: first_sf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: first_sf_default_datagroup

explore: customer {
  label: "Customer Data"
  join: call_center {
    type: inner
    sql_on: 1=1 ;;
  }

  join: catalog_returns {
    type: inner
    sql_on: 1=1 ;;
  }

  join: date_dim {
    type: inner
     sql_on: 1=1 ;;
  }

  join: inventory {
    type: inner
    sql_on: 1=1 ;;
  }

  # join: item {
  #   type: inner
  #   sql_on: 1=1 ;;
  # }

  join: catalog_sales {
    type: inner
    sql_on: 1=1 ;;
  }

}

explore: catalog_sales {
  join: catalog_returns {
    type: left_outer
    sql_on: ${catalog_sales.cs_item_sk} = ${catalog_returns.cr_item_sk}  ;;
  }
}
