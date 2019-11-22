<?php

use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class WishItem extends DataObject
{
    private static $db = [
        'Sort'          => 'Int',
        'Name'          => 'Varchar(255)',
        'Type'          => 'Varchar(255)',
        'State'         => 'Enum("Unclaimed,Claimed","Unclaimed")',
        'Description'   => 'HTMLText'
    ];

    private static $has_one = [
        'WishListPage'  => WishlistPage::class
    ];

    private static $summary_fields = [
        'Name'          => 'Name',
        'Type'          => 'Type',
        'State'         => 'Status'
    ];

    private static $defaults = [
        'State'         => 'Unclaimed',
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
            DropdownField::create('State', 'Status', $this->dbObject('State')->enumValues()),
            HTMLEditorField::create('Description', 'Description')
        ]);

        return $fields;
    }
}
