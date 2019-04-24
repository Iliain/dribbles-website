<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class WishlistPage extends Page
{
    private static $db = [];

    private static $has_one = [];

    private static $has_many = [
        'WishItems' => WishItem::class
    ];

    private static $owns = [
        'WishItems',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        if ($this->ID) {
            $fields->addFieldToTab('Root.WishItems', GridField::create(
                'WishItems',
                'Wish Items',
                $this->WishItems(),
                GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows())
            ));
        }


        return $fields;
    }

    public function countOwned()
    {
        return $this->WishItems()->filter('Status', 1)->count();
    }
}
