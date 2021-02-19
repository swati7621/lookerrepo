view: jnation {
  sql_table_name: "TPCH_SF100"."JNATION"
    ;;

  dimension: nation {
    type: string
    sql: ${TABLE}."NATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
