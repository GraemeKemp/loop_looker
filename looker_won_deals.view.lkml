view: looker_won_deals {
  derived_table: {
    explore_source: flat_deals {
      column: deal_name {
        field: flat_deals.deal_name
      }
      column: create_date {
        field:  flat_deals.create_date
      }
      column: close_date {
        field: flat_deals.close_date
      }
    }
  }

  dimension: deal_name {
    type:  string
    primary_key:  yes
    sql:  ${TABLE}.deal_name ;;
  }
  dimension_group: create_date {
    type:  time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  ${TABLE}.create_date;;
  }
  dimension_group: close_date {
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
    sql:  ${TABLE}.close_date ;;
  }
}

# view: looker_won_deals {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
