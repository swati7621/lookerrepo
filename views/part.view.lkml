view: part {
  sql_table_name: "TPCH_SF100"."PART"
    ;;

  dimension: p_brand {
    type: string
    sql: ${TABLE}."P_BRAND" ;;
  }

  dimension: p_comment {
    type: string
    sql: ${TABLE}."P_COMMENT" ;;
  }

  dimension: p_container {
    type: string
    sql: ${TABLE}."P_CONTAINER" ;;
  }

  dimension: p_mfgr {
    type: string
    sql: ${TABLE}."P_MFGR" ;;
  }

  dimension: p_name {
    type: string
    sql: ${TABLE}."P_NAME" ;;
  }

  dimension: p_partkey {
    type: number
    sql: ${TABLE}."P_PARTKEY" ;;
  }

  dimension: p_retailprice {
    type: number
    sql: ${TABLE}."P_RETAILPRICE" ;;
  }

  dimension: p_size {
    type: number
    sql: ${TABLE}."P_SIZE" ;;
  }

  dimension: p_type {
    type: string
    sql: ${TABLE}."P_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [p_name]
  }
}
