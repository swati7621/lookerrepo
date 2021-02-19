view: jpart {
  sql_table_name: "TPCH_SF100"."JPART"
    ;;

  dimension: part {
    type: string
    sql: ${TABLE}."PART" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
