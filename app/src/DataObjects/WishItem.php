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
        'Description'   => 'HTMLText'
    ];

    private static $has_one = [
        'WishListPage'  => WishlistPage::class
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
            HTMLEditorField::create('Description', 'Description')
        ]);

        return $fields;
    }
}
