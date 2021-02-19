view: jregion {
  sql_table_name: "TPCH_SF100"."JREGION"
    ;;

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
