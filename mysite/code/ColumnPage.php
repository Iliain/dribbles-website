<?php

use Page;

class ColumnPage extends Page
{
    private static $db = [];

    private static $has_one = [];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        return $fields;
    }
}
