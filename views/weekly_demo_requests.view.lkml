view: weekly_demo_requests {
  sql_table_name: `growth_data.weekly_demo_requests`
    ;;

  dimension_group: active_week {
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
    sql: ${TABLE}.active_week ;;
  }

  dimension: demo_forms {
    type: number
    sql: ${TABLE}.demo_forms ;;
  }

  dimension_group: week {
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
    sql: ${TABLE}.week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
