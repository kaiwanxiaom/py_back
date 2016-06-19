create table if not exists 'indoor'(
	id integer primary key autoincrement,
	node_number text not null,
	update_time text not null,
	temperature text not null,
	humidity text not null,
	radiation text not null,
	co2 text not null
);

create table if not exists 'outdoor'(
	id integer primary key autoincrement,
	update_time text not null,
	temperature text not null,
	humidity text not null,
	radiation text not null,
	co2 text not null,
	wind_direction text not null,
	wind_speed text not null,
	rain_snow text not null,
	atmosphere text not null
);

create table if not exists 'control_state'(
	id integer primary key autoincrement,
	update_time text not null,
	roof_vent_south text not null,
	roof_vent_north text not null,
	side_vent text not null,
	shade_screen_out text not null,
	shade_screen_in text not null,
	thermal_screen text not null,
	cooling_pad text not null,
	fogging text not null,
	heating text not null,
	co2 text not null,
	lighting_1 text not null,
	lighting_2 text not null,
	irrigation text not null
);

--create table if not exists 'plant_parameter_setting'(
--	id integer primary key autoincrement,
--	time1 text not null,
--    temperature1 text not null,
--    time2 text not null,
--    temperature2 text not null,
--    time3 text not null,
--    temperature3 text not null,
--    time4 text not null,
--    temperature4 text not null,
--    co2_upper_limit text not null,
--    co2_lower_limit text not null
--);
--
--create table if not exists 'co2_parameter_setting'(
--	id integer primary key autoincrement,
--	co2_upper_limit text not null,
--    co2_lower_limit text not null
--);

create table if not exists 'parameter'(
	id integer primary key autoincrement,
	time1 text not null,
    temperature1 text not null,
    time2 text not null,
    temperature2 text not null,
    time3 text not null,
    temperature3 text not null,
    time4 text not null,
    temperature4 text not null,
    co2_upper_limit text not null,
    co2_lower_limit text not null,
    
    cooling_start_temperature text not null,
    cooling_stop_temperature text not null,
    
    expect_humidity text not null,
    humidity_influence_range_of_air_temperature text not null,
    low_humidity_influence_on_air_temperature text not null,
    high_humidity_influence_on_air_temperature text not null,
    expect_light text not null,
    light_influence_on_air_temperature_slope text not null,
    high_light_influence_on_temperature text not null,
    low_light_influence_on_temperature text not null,
    frost_temperature text not null,
    indoor_temperature_lower_limit text not null,
    roof_vent_wind_speed_upper_limit text not null,
    roof_vent_rain_upper_limit text not null,
    
    heating_start_lowest_temperature text not null,
    heating_stop_highest_temperature text not null,
    
    month_to_open_thermal_screen text not null,
    month_to_close_thermal_screen text not null,
    time_to_open_thermal_screen text not null,
    time_to_close_thermal_screen text not null,
    
    temperature_to_open_side text not null,
    wait_time_to_open_side text not null,
    rain_upper_limit_to_close text not null,
    
    upper_limit_light_to_open_shade_screen_out text not null,
    upper_limit_light_to_open_shade_screen_in text not null,
    soil_humidity_to_start_irrigation text not null,
    soil_humidity_to_stop_irrigation text not null,
    temperature_to_open_fogging text not null,
    temperature_to_open_cooling_pad text not null,
    
    month_to_open_lighting text not null,
    month_to_close_lighting text not null,
    time_to_close_lighting text not null,
    time_to_close_lihting text not null,
    radiatiopn_to_open_lighting text not null,
    radiation_to_close_lihting text not null
)