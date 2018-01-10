# view: topojson_map {
#   sql_table_name: giants.topojson_map ;;

#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }

#   dimension: {
#     type: string
#     sql: ${TABLE}.`||` ;;
#   }

#   dimension: {
#     type: string
#     sql: ${TABLE}.`|` ;;
#   }

#   dimension: 1 {
#     type: string
#     sql: ${TABLE}.`|001` ;;
#   }

#   dimension: 1 {
#     type: string
#     sql: ${TABLE}.`||001` ;;
#   }

#   dimension: 2 {
#     type: string
#     sql: ${TABLE}.`|002` ;;
#   }

#   dimension: 2 {
#     type: string
#     sql: ${TABLE}.`||002` ;;
#   }

#   dimension: __giants__ {
#     type: string
#     sql: ${TABLE}.`|__giants__|` ;;
#   }

#   dimension: __giants____arcs {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs-` ;;
#   }

#   dimension: __giants____arcs001 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs001` ;;
#   }

#   dimension: __giants____arcs002 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs002` ;;
#   }

#   dimension: __giants____arcs003 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs003` ;;
#   }

#   dimension: __giants____arcs004 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs004` ;;
#   }

#   dimension: __giants____arcs005 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs005` ;;
#   }

#   dimension: __giants____arcs006 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__arcs006` ;;
#   }

#   dimension: __giants____properties__centroid001 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__properties__centroid001` ;;
#   }

#   dimension: __giants____properties__centroid002 {
#     type: string
#     sql: ${TABLE}.`|__giants__|__properties__centroid002` ;;
#   }

#   dimension: __giants____type {
#     type: string
#     sql: ${TABLE}.`|__giants__|__type` ;;
#   }

#   dimension: __giants__type {
#     type: string
#     sql: ${TABLE}.`|__giants__type` ;;
#   }

#   dimension: label {
#     type: string
#     sql: ${TABLE}.label ;;
#   }

#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }

#   dimension: section_id {
#     type: string
#     sql: ${TABLE}.section_id ;;
#   }

#   dimension: topo {
#     type: string
#     sql: ${TABLE}.topo ;;
#   }

#   dimension: type {
#     type: string
#     sql: ${TABLE}.type ;;
#   }

#   measure: count {
#     type: count
#     drill_fields: [id, name]
#   }
# }
