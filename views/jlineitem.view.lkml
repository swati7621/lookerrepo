view: jlineitem {
  sql_table_name: "TPCH_SF100"."JLINEITEM"
    ;;

  dimension: lineitem {
    type: string
    sql: ${TABLE}."LINEITEM" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
