view: time_fields {

    derived_table: {
      sql: select

                    now(),
                    now() - interval '12 hours' as twelve_hr_ago,
                    now() - interval '24 hours' as twentyfour_hr_ago,
                    now() - interval '48 hours' as fortyeight_hr_ago,
                    now() - interval '72 hours' as seventytwo_hr_ago
                     ;;
    }

    dimension_group: now {
      type: time
      sql: ${TABLE}."now" ;;
    }

    dimension_group: twelve_hr_ago {
      type: time
      sql: ${TABLE}."twelve_hr_ago" ;;
    }

    dimension_group: twentyfour_hr_ago {
      type: time
      sql: ${TABLE}."twentyfour_hr_ago" ;;
    }

    dimension_group: fortyeight_hr_ago {
      type: time
      sql: ${TABLE}."fortyeight_hr_ago" ;;
    }

    dimension_group: seventytwo_hr_ago {
      type: time
      sql: ${TABLE}."seventytwo_hr_ago" ;;
    }

 }
