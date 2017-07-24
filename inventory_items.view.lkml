view: inventory_items {
  sql_table_name: demo_db.inventory_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }


  dimension: test_dimensino {
    type: string
    sql:  ${header} ;;
    html:
    {% if {{inventory_items.header._rendered_value}} == "Header text" %}
    <div style= "border-style:solid; border-size:1px; background-color:#c0e2f0; color:#70310f; padding:0px,0px,0px,3px;align:center;"> Datasource(s) In Total </div>
    {% else %}
    {{inventory_items.header._rendered_value}}
    {% endif %}
    ;;

  }

  dimension:  header {
    type:  string
    sql:'Header text' ;;
  }

  dimension: test_dimensino2 {
    type: string
    sql:  'Datasource(s) In Total';;
    html:
    <div style= "border-style:solid; border-size:1px; background-color:#c0e2f0; color:#70310f; padding:0px,0px,0px,3px;align:center;"> {{value}} </div>

    ;;

    }






  dimension_group: sold {
    type: time
    view_label: "flas"
    view_label: "floos"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

# measure: min {
#   type: min
#   sql:  ${count} ;;
#
#
# }

  measure: count {
    type: count
    drill_fields: [id, products.item_name, products.id, order_items.count]
  }
}
