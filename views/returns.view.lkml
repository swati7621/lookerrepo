view: returns {
  label: "return vview label"
  sql_table_name: "PUBLIC"."RETURNS"
    ;;

  dimension: _file {
    type: string
    sql: ${TABLE}."_FILE" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _line {
    type: number
    sql: ${TABLE}."_LINE" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: returned {
    type: string
    sql: ${TABLE}."RETURNED" ;;
  }

  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.customer_name, orders.product_name]
  }
}
