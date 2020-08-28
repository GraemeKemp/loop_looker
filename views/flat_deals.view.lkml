view: flat_deals {
  sql_table_name: `growth_data.flat_deals`
    ;;

  dimension: acv {
    type: number
    sql: ${TABLE}.ACV ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}.close_date ;;
  }

  dimension: committed {
    type: string
    sql: ${TABLE}.committed ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension_group: create_week {
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
    sql: ${TABLE}.create_week ;;
  }

  dimension: deal_amount {
    type: number
    sql: ${TABLE}.deal_amount ;;
  }

  dimension: deal_name {
    type: string
    sql: ${TABLE}.deal_name ;;
  }

  dimension: deal_owner {
    type: string
    sql: ${TABLE}.deal_owner ;;
  }

  dimension: deal_pipeline {
    type: string
    sql: ${TABLE}.deal_pipeline ;;
  }

  dimension: deal_source {
    type: string
    sql: ${TABLE}.deal_source ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${TABLE}.deal_stage ;;
  }

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  dimension: deal_type {
    type: string
    sql: ${TABLE}.deal_type ;;
  }

  dimension: forecast_amount {
    type: number
    sql: ${TABLE}.forecast_amount ;;
  }

  dimension: lost_explanation {
    type: string
    sql: ${TABLE}.lost_explanation ;;
  }

  dimension: lost_reason {
    type: string
    sql: ${TABLE}.lost_reason ;;
  }

  dimension: previous_solution {
    type: string
    sql: ${TABLE}.previous_solution ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: time_to_close {
    type: number
    sql: ${TABLE}.time_to_close ;;
  }

  dimension: months_to_close {

    type: number

    sql: FLOOR(${time_to_close}/(30)) ;;

  }

  dimension: months_to_close_tier {

    type: tier

    tiers: [1,3,6,12,24]

    style: integer

    sql: ${months_to_close} ;;

  }

  measure: average_time_to_close {
    type: average
    sql: ${time_to_close} ;;
    value_format: "0.##"
  }

  dimension: vertical {
    type: string
    sql: ${TABLE}.vertical ;;
  }

  dimension: won_explanation {
    type: string
    sql: ${TABLE}.won_explanation ;;
  }

  dimension: won_reason {
    type: string
    sql: ${TABLE}.won_reason ;;
  }

  measure: count {
    type: count
    drill_fields: [deal_name]
  }
}
