view: closed_deals {
  sql_table_name: `growth_data.closed_deals`
    ;;

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

  dimension: deal_tier {
    type: string
    sql: ${TABLE}.deal_tier ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
