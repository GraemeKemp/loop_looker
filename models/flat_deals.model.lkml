connection: "looker_hubspot"

# include all the views
include: "/views/**/*.view"
# include: "looker_won_deals.view"
datagroup: flat_deals_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: flat_deals_default_datagroup

explore: flat_companies {}

explore: flat_contacts {}

explore: flat_deals {
  join: looker_cumulative_won {
    type:  left_outer
    relationship:  many_to_one
    sql_on:  ${flat_deals.create_date} = ${looker_cumulative_won.create_date} ;;
  }
}
