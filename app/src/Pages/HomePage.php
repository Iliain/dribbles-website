<?php

use Dexven\FacebookFeed\Model\FacebookFeed;
use SilverStripe\Forms\DropdownField;

class HomePage extends Page
{
    private static $icon_class = 'font-icon-home';

    private static $db = [];

    private static $has_one = [
        'FacebookFeed' => FacebookFeed::class,
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', DropdownField::create('FacebookFeedID', 'Select a feed:', FacebookFeed::get()->map('ID', 'Title')));

        return $fields;
    }
}
