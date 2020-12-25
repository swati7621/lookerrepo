connection: "superstore_data"

# include all the views
include: "/views/**/*.view"

datagroup: ss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ss_default_datagroup

explore: fivetran_audit {}

explore: orders {}

explore: people {}

explore: returns {
  join: orders {
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: sql_runner_query {}
