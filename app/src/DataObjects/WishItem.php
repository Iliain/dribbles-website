<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\CheckboxField;

class WishItem extends DataObject
{
    private static $db = [
        'Sort'          => 'Int',
        'Name'          => 'Varchar(255)',
        'Type'          => 'Varchar(255)',
        'Status'        => 'Boolean',
        'Console'       => 'Varchar(255)',
        'Description'   => 'HTMLText'
    ];

    private static $has_one = [
        'WishListPage'  => WishlistPage::class
    ];

    private static $defaults = [
        'Console'       => 'N/A'
    ];

    private static $summary_fields = [
        'Name'          => 'Name',
        'Type'          => 'Type',
        'Status'        => 'Status'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeFieldsFromTab('Root.Main', [
            'Sort',
            'WishListPageID'
        ]);

        $fields->addFieldstoTab('Root.Main', [
            TextField::create('Name', 'Item'),
            TextField::create('Type', 'Type'),
            CheckboxField::create('Status', 'Status'),
            TextField::create('Console', 'Console'),
            HTMLEditorField::create('Description', 'Description')
        ]);

        return $fields;
    }
}
