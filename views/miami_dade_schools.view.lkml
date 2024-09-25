view: miami_dade_schools {
  sql_table_name: `gcp-sandbox-324617.miamidad.miami_dade_schools` ;;

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }
  dimension: has_hvac {
    type: yesno
    sql: ${TABLE}.has_hvac ;;
    html:
    {% if value == 'Yes' %}
    <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'No' %}
    <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: has_power {
    type: yesno
    sql: ${TABLE}.has_power ;;
    html:
    {% if value == 'Yes' %}
    <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'No' %}
    <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: has_road_access {
    type: yesno
    sql: ${TABLE}.has_road_access ;;
    html:
    {% if value == 'Yes' %}
    <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'No' %}
    <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
  }
  dimension: is_damaged {
    sql: ${TABLE}.is_damaged;;
    html:
    {% if value == 'Yes' %}
      <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'No' %}
      <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
    type: yesno
  }

  dimension: is_flooded {
    sql: ${TABLE}.is_flooded;;
    html:
    {% if value == 'Yes' %}
    <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'No' %}
    <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
    type: yesno
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }
  dimension: school_administrator {
    type: string
    sql: ${TABLE}.school_administrator ;;
  }
  dimension: school_latitude {
    type: number
    sql: ${TABLE}.school_latitude ;;
  }
  dimension: school_longitude {
    type: number
    sql: ${TABLE}.school_longitude ;;
  }

  dimension: school_location {
    type: location
    sql_latitude:${school_latitude} ;;
    sql_longitude:${school_longitude} ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }
  dimension: school_telephone {
    type: string
    sql: ${TABLE}.school_telephone ;;
  }
  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }
  dimension: street_number {
    type: string
    sql: ${TABLE}.street_number ;;
  }
  measure: count {
    type: count
    drill_fields: [school_name]
  }
}
