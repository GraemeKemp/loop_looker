view: deal_metrics_by_tier {
  sql_table_name: `growth_data.deal_metrics_by_tier`
    ;;

  dimension: average_deal_size {
    type: number
    sql: ${TABLE}.average_deal_size ;;
  }

  dimension: closed_deal_count {
    type: number
    sql: ${TABLE}.closed_deal_count ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: day_count {
    type: number
    sql: ${TABLE}.day_count ;;
  }

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  dimension: time_to_close {
    type: number
    sql: ${TABLE}.time_to_close ;;
  }

  dimension: total_deal_count {
    type: number
    sql: ${TABLE}.total_deal_count ;;
  }

  dimension: total_mrr {
    type: number
    sql: ${TABLE}.total_mrr ;;
  }

  dimension: total_time_to_close {
    type: number
    sql: ${TABLE}.total_time_to_close ;;
  }

  dimension: total_won_deals {
    type: number
    sql: ${TABLE}.total_won_deals ;;
  }

  dimension: win_rate {
    type: number
    sql: ${TABLE}.win_rate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
