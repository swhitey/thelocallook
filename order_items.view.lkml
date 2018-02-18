view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  parameter: test_parameter {
  type: string
  }

  measure: field_for_the_single_value_vis {

  sql:
  case
  when {% parameter inventory_item_id %} = 'blah' then ${order_id}
  when {% parameter inventory_item_id %} = 'blahblah' then ${count}
  end ;;
  }

  dimension: inventory_item_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
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
    sql: ${TABLE}.returned_at ;;
  }

  measure: count_of_orders {
    type:  count_distinct
    sql: ${TABLE}.order_id ;;

  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }
}
