view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  measure: test_list {
    type: list
    list_field: brand
  }

  measure: test_yesno {
    type: yesno
    sql:  ${test_list} like '%Allegra K%' ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  measure: total_brand {
    type: count_distinct
    sql: ${brand}     ;;
  }

  measure: allegrak_count{
    type: count
    filters: {
      field: brand
      value: "Allegra K"
    }
  }

  measure: percent {
    type: number
    sql: ${allegrak_count}/${total_brand} ;;

  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
