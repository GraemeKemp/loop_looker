view: total_deals {
  sql_table_name: `growth_data.total_deals`
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

  dimension: day_count {
    type: number
    sql: ${TABLE}.day_count ;;
  }

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  dimension: total_deal_count {
    type: number
    sql: ${TABLE}.total_deal_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
