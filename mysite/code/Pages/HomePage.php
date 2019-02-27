<?php

use SilverStripe\Dev\Debug;

class HomePage extends Page
{
    private static $db = [];

    private static $has_one = [];

    private static $has_many = [];

    private static $owns = [];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }
}
