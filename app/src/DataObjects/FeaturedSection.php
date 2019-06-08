<?php

use gorriecoe\LinkField\LinkField;
use gorriecoe\Link\Models\Link;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class FeaturedSection extends DataObject
{
    private static $db = [
        'Title'         =>  'Varchar(255)',
        'Description'   => 'HTMLText',
        'Sort'          => 'Int'
    ];

    private static $has_one = [
        'Link'          => Link::class,
        'HomePage'      => HomePage::class
    ];

    private static $summary_fields = [
        'Title'         => 'Title'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeFieldsFromTab('Root.Main', [
            'LinkID',
            'Sort',
            'HomePageID'
        ]);

        $fields->addFieldstoTab('Root.Main', [
            LinkField::create('Link', 'Link', $this),
            HTMLEditorField::create('Description')
        ]);

        return $fields;
    }
}
