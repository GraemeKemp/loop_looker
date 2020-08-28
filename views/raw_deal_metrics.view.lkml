view: raw_deal_metrics {
  sql_table_name: `growth_data.raw_deal_metrics`
    ;;

  dimension: average_acv {
    type: number
    sql: ${TABLE}.average_acv ;;
  }

  dimension: average_mrr {
    type: number
    sql: ${TABLE}.average_mrr ;;
  }

  dimension: average_ttc {
    type: number
    sql: ${TABLE}.average_ttc ;;
  }

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

  dimension: count_closed {
    type: number
    sql: ${TABLE}.count_closed ;;
  }

  dimension: deal_owner {
    type: string
    sql: ${TABLE}.deal_owner ;;
  }

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  dimension: total_acv {
    type: number
    sql: ${TABLE}.total_acv ;;
  }

  dimension: total_mrr {
    type: number
    sql: ${TABLE}.total_mrr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
