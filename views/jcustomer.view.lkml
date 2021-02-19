view: jcustomer {
  sql_table_name: "TPCH_SF100"."JCUSTOMER"
    ;;

  dimension: customer {
    type: string
    sql: ${TABLE}."CUSTOMER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
