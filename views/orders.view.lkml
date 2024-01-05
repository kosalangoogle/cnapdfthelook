view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year,fiscal_quarter_of_year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: filter_dimension {
    case: {
      when: {
        sql: ${status} = 'COMPLETE' ;;
        label: "Letter A"
      }
      when: {
        sql: ${status} = 'p' ;;
        label: "Letter B"
      }
      else: "Unknown"
    }
  }
    dimension: oder_id {
      type: number
      sql: order_items.id ;;
    }
   measure: new1 {
     type: number
    sql: case when ${status}="COMPLETED" or ${status}="PENDING" then sum(${user_id}) else null end    ;;
   }

  measure: new2 {
    type: number
    sql: case when ${new1}>0 then sum(${id})/sum(${oder_id}) else null end ;;
    value_format_name: percent_2
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.id,
  users.first_name,
  users.last_name,
  billion_orders.count,
  fakeorders.count,
  hundred_million_orders.count,
  hundred_million_orders_wide.count,
  order_items.count,
  order_items_vijaya.count,
  ten_million_orders.count
  ]
  }

}
