view: key_subs_to_customers {
  sql_table_name: `growth_data.key_subs_to_customers`
    ;;

  dimension: all_subscriptions {
    type: string
    sql: ${TABLE}.all_subscriptions ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
