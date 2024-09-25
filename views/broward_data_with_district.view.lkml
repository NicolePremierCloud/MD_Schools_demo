view: broward_data_with_district {
  sql_table_name: `miamidad.Broward_data_with_district` ;;

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }
  dimension: county_fips {
    type: string
    sql: ${TABLE}.county_FIPS ;;
  }
  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }
  dimension: district_number {
    type: number
    sql: ${TABLE}.district_number ;;
  }
  dimension: geo_id {
    type: string
    sql: ${TABLE}.GEO_ID ;;
  }
  dimension: median_home_value_acs17_21 {
    type: number
    sql: ${TABLE}.median_home_value_ACS17_21 ;;
  }
  dimension: median_home_value_acs17_21_moe {
    type: number
    sql: ${TABLE}.median_home_value_ACS17_21_MOE ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: pct_associates_acs17_21 {
    type: number
    sql: ${TABLE}.pct_associates_ACS17_21 ;;
  }
  dimension: pct_associates_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_associates_ACS17_21_MOE ;;
  }
  dimension: pct_bach_or_higher_acs17_21 {
    type: number
    sql: ${TABLE}.pct_bach_or_higher_ACS17_21 ;;
  }
  dimension: pct_bach_or_higher_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_bach_or_higher_ACS17_21_MOE ;;
  }
  dimension: pct_employed_acs17_21 {
    type: number
    sql: ${TABLE}.pct_employed_ACS17_21 ;;
  }
  dimension: pct_employed_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_employed_ACS17_21_MOE ;;
  }
  dimension: pct_hhbroadband_sub_acs17_21 {
    type: number
    sql: ${TABLE}.pct_HHbroadband_sub_ACS17_21 ;;
  }
  dimension: pct_hhbroadband_sub_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_HHbroadband_sub_ACS17_21_MOE ;;
  }
  dimension: pct_hs_diploma_acs17_21 {
    type: number
    sql: ${TABLE}.pct_HS_diploma_ACS17_21 ;;
  }
  dimension: pct_hs_diploma_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_HS_diploma_ACS17_21_MOE ;;
  }
  dimension: pct_labor_particp_acs17_21 {
    type: number
    sql: ${TABLE}.pct_labor_particp_ACS17_21 ;;
  }
  dimension: pct_labor_particp_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_labor_particp_ACS17_21_MOE ;;
  }
  dimension: pct_poverty_acs17_21 {
    type: number
    sql: ${TABLE}.pct_poverty_ACS17_21 ;;
  }
  dimension: pct_poverty_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_poverty_ACS17_21_MOE ;;
  }
  dimension: pct_self_employed_acs17_21 {
    type: number
    sql: ${TABLE}.pct_self_employed_ACS17_21 ;;
  }
  dimension: pct_self_employed_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_self_employed_ACS17_21_MOE ;;
  }
  dimension: pct_telework_acs17_21 {
    type: number
    sql: ${TABLE}.pct_telework_ACS17_21 ;;
  }
  dimension: pct_telework_acs17_21_moe {
    type: number
    sql: ${TABLE}.pct_telework_ACS17_21_MOE ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  measure: count {
    type: count
    drill_fields: [district_name, name]
  }
}
