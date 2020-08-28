view: sales_goals {
  sql_table_name: `growth_data.sales_goals`
    ;;

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: deer_acv_goal {
    type: number
    sql: ${TABLE}.deer_acv_goal ;;
  }

  dimension: deer_mrr_goal {
    type: number
    sql: ${TABLE}.deer_mrr_goal ;;
  }

  dimension: elephant_acv_goal {
    type: number
    sql: ${TABLE}.elephant_acv_goal ;;
  }

  dimension: elephant_mrr_goal {
    type: number
    sql: ${TABLE}.elephant_mrr_goal ;;
  }

  dimension: rabbit_acv_goal {
    type: number
    sql: ${TABLE}.rabbit_acv_goal ;;
  }

  dimension: rabbit_mrr_goal {
    type: number
    sql: ${TABLE}.rabbit_mrr_goal ;;
  }

  dimension: total_acv_goal {
    type: number
    sql: ${TABLE}.total_acv_goal ;;
  }

  dimension: total_mrr_goal {
    type: number
    sql: ${TABLE}.total_mrr_goal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
