view: brand_order_facts {
 derived_table: {
   explore_source: order_items {
    # column: product_brand {field: inventory_items.product_brand}
    column: product_id {field: inventory_items.product_id}
     column: sale_price {}
     derived_column: brand_rank {
       sql: row_number() over (order by sale_price desc) ;;
     }
    bind_filters: {
      from_field: order_items.sale_price
      to_field: order_items.sale_price
    }

    #bind_all_filters: yes
    }
 }
  dimension: brand_rank {
    type: number
  }
  dimension: product_id {
  #  primary_key: yes
  }
#  dimension: sale_price {}
  dimension: total_revenue {
     value_format: "$#,##0.00"
    type: number
  }
}
