view: cumulative_average_time_to_close {
  sql_table_name: `growth_data.cumulative_average_time_to_close`
    ;;

  dimension_group: close_week {
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
    sql: ${TABLE}.close_week ;;
  }

  dimension: cumulative_average_time_to_close {
    type: number
    sql: ${TABLE}.cumulative_average_time_to_close ;;
  }

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  dimension: total_time_to_close {
    type: number
    sql: ${TABLE}.total_time_to_close ;;
  }

  dimension: won_deals {
    type: number
    sql: ${TABLE}.won_deals ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
