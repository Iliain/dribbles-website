<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Versioned\Versioned;

class ElementClassExtension extends DataExtension
{
    private static $db = [
        'CustomClass'    => 'Varchar(255)',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('CustomClass', 'Custom Class')->setDescription('Used for columns.')
        ]);
    }
}
