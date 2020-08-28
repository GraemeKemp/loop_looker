view: stripe_subscriptions {
  sql_table_name: `growth_data.stripe_subscriptions`
    ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: plan_amount {
    type: number
    sql: ${TABLE}.plan_amount ;;
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.plan_id ;;
  }

  dimension: plan_interval {
    type: string
    sql: ${TABLE}.plan_interval ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}.plan_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sub_id {
    type: string
    sql: ${TABLE}.sub_id ;;
  }

  dimension_group: trial_end {
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
    sql: ${TABLE}.trial_end ;;
  }

  dimension_group: trial_start {
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
    sql: ${TABLE}.trial_start ;;
  }

  measure: count {
    type: count
    drill_fields: [plan_name]
  }
}
