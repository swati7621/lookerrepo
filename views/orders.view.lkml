view: orders {
  sql_table_name: "TPCH_SF100"."ORDERS"
    ;;

  dimension: o_clerk {
    type: string
    sql: ${TABLE}."O_CLERK" ;;
  }

  dimension: o_comment {
    type: string
    sql: ${TABLE}."O_COMMENT" ;;
  }

  dimension: o_custkey {
    type: number
    sql: ${TABLE}."O_CUSTKEY" ;;
  }

  dimension_group: o_orderdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."O_ORDERDATE" ;;
  }

  dimension: o_orderkey {
    type: number
    sql: ${TABLE}."O_ORDERKEY" ;;
  }

  dimension: o_orderpriority {
    type: string
    sql: ${TABLE}."O_ORDERPRIORITY" ;;
  }

  dimension: o_orderstatus {
    type: string
    sql: ${TABLE}."O_ORDERSTATUS" ;;
  }

  dimension: o_shippriority {
    type: number
    sql: ${TABLE}."O_SHIPPRIORITY" ;;
  }

  dimension: o_totalprice {
    type: number
    sql: ${TABLE}."O_TOTALPRICE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
