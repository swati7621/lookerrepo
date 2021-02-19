view: jsupplier {
  sql_table_name: "TPCH_SF100"."JSUPPLIER"
    ;;

  dimension: supplier {
    type: string
    sql: ${TABLE}."SUPPLIER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
