connection: "superstore_data"

# include all the views
include: "/views/**/*.view"
include: "/new/*.view"

datagroup: ss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ss_default_datagroup
case_sensitive: yes
access_grant: can_view_financial_data {
  user_attribute: department
  allowed_values: [ "finance", "executive" ]
}

explore: orders {
  label: "order label advdeploy"
}

explore: people {}
explore: returns {
  join: orders {
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}

explore: fivetran_audit {}

explore: sql_runner_query {}
