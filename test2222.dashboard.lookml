
- dashboard: jack_test2222
  title: jack test2222
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: xVLg739UyBpghHUQam5QO4
  elements:
  - title: Outbound Volume - Account 412288 Tile actions
    name: Outbound Volume - Account 412288 Tile actions
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      orders.count:
        is_active: true
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Brand: products.brand
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Change VS
    name: Change VS
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 1
    series_cell_visualizations:
      orders.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    conditional_formatting: [{type: less than, value: 0, background_color: "#462C9D",
        font_color: "#C00000", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: '',
        font_color: "#006600", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Brand: products.brand
    row: 0
    col: 7
    width: 4
    height: 6
  - title: Collection Accounts
    name: Collection Accounts
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${products.count}/${orders.count}"
      label: Customer Experience
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: customer_experience
      _type_hint: number
    - category: table_calculation
      expression: "${users.count}/${products.count}"
      label: DPD Success %
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: dpd_success
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      orders.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    conditional_formatting: [{type: less than, value: 0, background_color: "#462C9D",
        font_color: "#C00000", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: '',
        font_color: "#006600", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Brand: products.brand
    row: 0
    col: 11
    width: 6
    height: 6
  - title: Change vs
    name: Change vs
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${products.count}/${orders.count}"
      label: Customer Experience
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: customer_experience
      _type_hint: number
    - category: table_calculation
      expression: "${users.count}/${products.count}"
      label: DPD Success %
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: dpd_success
      _type_hint: number
    - category: table_calculation
      expression: |-
        if(index(${orders.count}, 1) / ${orders.count}-1 = 0,
          null,
        index(${orders.count}, 1) / ${orders.count}-1
        )
      label: Collections
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: collections
      _type_hint: number
    - category: table_calculation
      expression: |-
        if(index(${products.count}, 1) / ${products.count}-1 = 0,
          null,
        index(${products.count}, 1) / ${products.count}-1
        )
      label: Recipient Success
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: recipient_success
      _type_hint: number
    - category: table_calculation
      expression: |-
        if(index(${users.count}, 1) / ${users.count}-1 = 0,
          null,
        index(${users.count}, 1) / ${users.count}-1
        )
      label: DPD Success
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: dpd_success_1
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 1
    series_cell_visualizations:
      orders.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    conditional_formatting: [{type: less than, value: 0, background_color: '', font_color: "#C00000",
        color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766, palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0, background_color: '', font_color: "#006600", color_application: {
          collection_id: 5b121cce-cf79-457c-a52a-9162dc174766, palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [orders.count, products.count, users.count]
    listen:
      Brand: products.brand
    row: 0
    col: 17
    width: 7
    height: 6
  - title: test
    name: test
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    filters:
      products.brand: ''
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 1
    series_column_widths:
      orders.created_year: 1
    series_cell_visualizations:
      orders.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    conditional_formatting: [{type: less than, value: 0, background_color: "#462C9D",
        font_color: "#C00000", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: '',
        font_color: "#006600", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: test 2
    name: test 2
    model: cnapdftestthelook
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, orders.count, products.count, users.count]
    fill_fields: [orders.created_year]
    filters:
      products.brand: ''
    sorts: [orders.created_year desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 1
    series_cell_visualizations:
      orders.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    header_font_color: "#efffe5"
    header_background_color: "#ff2323"
    conditional_formatting: [{type: less than, value: 0, background_color: "#462C9D",
        font_color: "#C00000", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: '',
        font_color: "#006600", color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cnapdftestthelook
    explore: order_items
    listens_to_filters: []
    field: products.brand
