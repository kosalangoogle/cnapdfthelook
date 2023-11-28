view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
  measure: sum_sale {
    type: sum
    sql: ${sale_price} ;;
  }
  measure: new_measure {
    type: number
    sql: case when sum(${sale_price}) then ((${sale_price})*10.1/sum(${sale_price})) else null end  ;;
    html: {%if new_measure._value >=0 %}
    <p>{{new_measure._value |times:100|round:1}}%</p>
    {% else %}
    <p style ='color:#EA4335;' >({{new_measure._value |times:-100|round:1}}%)<p>
    {% endif %};;
  }
}
