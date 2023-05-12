view: analytics__dimensions_base {

  sql_table_name: advertiser_report ;;

  dimension_group: event {
    group_label: " Timestamp"
    type: time
    timeframes: [
      date,
      day_of_week,
      week,
      month,
      day_of_month,
      quarter,
      day_of_year
    ]
    sql: ${timestamp} ;;
  }

  dimension: platform {
    description: "Device Platform (iOS / Android)"
    sql: ${TABLE}.platform ;;
  }
  
  measure: adv_spend {
    description: "Advertiser Spend"
    type: sum
    sql: ${TABLE}.adv_spend ;;
  }
}