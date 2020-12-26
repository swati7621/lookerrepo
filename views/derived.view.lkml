view: sql_runner_query {
  derived_table: {
    sql: SELECT
        CUSTOMER_ID ,                        -- Can be made a dimension
        SUM(SALES) AS lifetime_spend   -- Can be made a dimension
      FROM
        "PUBLIC"."ORDERS"
      WHERE {% condition order_region %} REGION {% endcondition %}
       --  REGION = 'South'                -- Can NOT be made a dimension
      GROUP BY 1
    ;;
  }

  filter: order_region {
    type: string
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: lifetime_spend {
    type: number
    sql: ${TABLE}."LIFETIME_SPEND" ;;
  }

 measure: spend {
    type: count
    # sql: ${lifetime_spend};;
  }

  dimension: tst {
    # type: string
    # sql: ${customer_id} ;;
  }

  set: detail {
    fields: [customer_id, lifetime_spend]
  }
}
