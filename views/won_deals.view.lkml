view: won_deals {
  sql_table_name: `growth_data.won_deals`
    ;;

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

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
