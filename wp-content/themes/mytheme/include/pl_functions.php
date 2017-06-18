<?php

function pl_add_custom_option_type($types) {
    $types['taxonomy_checkbox_order'] = 'Taxonomy checkbox order';
    return $types;
}

add_filter('ot_option_types_array', 'pl_add_custom_option_type');

if (!function_exists('ot_type_list_item')) {

    function ot_type_list_item($args = array()) {

        /* turns arguments array into variables */
        extract($args);

        /* verify a description */
        $has_desc = $field_desc ? true : false;

        // Default
        $sortable = true;

        // Check if the list can be sorted
        if (!empty($field_class)) {
            $classes = explode(' ', $field_class);
            if (in_array('not-sortable', $classes)) {
                $sortable = false;
                str_replace('not-sortable', '', $field_class);
            }
        }

        /* format setting outer wrapper */
        echo '<div class="format-setting type-list-item ' . ( $has_desc ? 'has-desc' : 'no-desc' ) . '">';

        /* description */
        echo $has_desc ? '<div class="description">' . htmlspecialchars_decode($field_desc) . '</div>' : '';

        /* format setting inner wrapper */
        echo '<div class="format-setting-inner">';

        /* pass the settings array arround */
        echo '<input type="hidden" name="' . esc_attr($field_id) . '_settings_array" id="' . esc_attr($field_id) . '_settings_array" value="' . ot_encode(serialize($field_settings)) . '" />';

        /**
         * settings pages have array wrappers like 'option_tree'.
         * So we need that value to create a proper array to save to.
         * This is only for NON metabox settings.
         */
        if (!isset($get_option))
            $get_option = '';

        /* build list items */
        echo '<ul class="option-tree-setting-wrap' . ( $sortable ? ' option-tree-sortable' : '' ) . '" data-name="' . esc_attr($field_id) . '" data-id="' . esc_attr($post_id) . '" data-get-option="' . esc_attr($get_option) . '" data-type="' . esc_attr($type) . '">';

        if (is_array($field_value) && !empty($field_value)) {

            foreach ($field_value as $key => $list_item) {

                echo '<li class="ui-state-default list-list-item">';
                ot_list_item_view($field_id, $key, $list_item, $post_id, $get_option, $field_settings, $type);
                echo '</li>';
            }
        }

        echo '</ul>';

        /* button */
        echo '<a href="javascript:void(0);" class="option-tree-list-item-add option-tree-ui-button button button-primary right hug-right" title="' . __('Add New', 'option-tree') . '">' . __('Add New', 'option-tree') . '</a>';

        /* description */
        $list_desc = $sortable ? __('You can re-order with drag & drop, the order will update after saving.', 'option-tree') : '';
        echo '<div class="list-item-description">' . apply_filters('ot_list_item_description', $list_desc, $field_id) . '</div>';

        echo '</div>';

        echo '</div>';
    }

}

if (!function_exists('ot_type_taxonomy_checkbox_order')) {

    function ot_type_taxonomy_checkbox_order($args = array()) {

        extract($args);
        $field_desc .= '<p><i>**Kéo thả để sắp xếp vị trí**</i></p>';
        $has_desc = $field_desc ? true : false;
        echo '<div class="format-setting type-taxonomy-checkbox type-checkbox ' . ( $has_desc ? 'has-desc' : 'no-desc' ) . '">';
        echo $has_desc ? '<div class="description">' . htmlspecialchars_decode($field_desc) . '</div>' : '';
        echo '<div class="format-setting-inner ot_taxonomy_checkbox_order">';
        $taxonomy = isset($field_taxonomy) ? explode(',', $field_taxonomy) : array('category');
        $taxonomies = get_categories(apply_filters('ot_type_taxonomy_checkbox_query', array('hide_empty' => false, 'taxonomy' => $taxonomy), $field_id));

        if ($taxonomies) {

            foreach ($taxonomies as $taxonomy) {
                echo '<p>';
                echo '<input type="checkbox" name="' . esc_attr($field_name) . '[' . esc_attr($taxonomy->term_id) . ']" id="' . esc_attr($field_id) . '-' . esc_attr($taxonomy->term_id) . '" value="' . esc_attr($taxonomy->term_id) . '" ' . ( isset($field_value[$taxonomy->term_id]) ? checked($field_value[$taxonomy->term_id], $taxonomy->term_id, false) : '' ) . ' class="option-tree-ui-checkbox ' . esc_attr($field_class) . '" />';
                echo '<label for="' . esc_attr($field_id) . '-' . esc_attr($taxonomy->term_id) . '">' . esc_attr($taxonomy->name) . '</label>';
                echo '</p>';
            }
        } else {
            echo '<p>' . __('No Taxonomies Found', 'option-tree') . '</p>';
        }

        echo '</div>';
        echo '</div>';
        ?>
        <script>
            (function ($) {
                $('.ot_taxonomy_checkbox_order').sortable();
            })(jQuery);
        </script>
        <?php

    }

}