<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HeaderField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Versioned\Versioned;

class SiteConfigExtension extends DataExtension
{
    private static $db = [
        'FooterText'    => 'Varchar(255)',
    ];

    private static $has_one = [
        'SiteLogo'      => Image::class,
    ];

    private static $owns = [
        'SiteLogo',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab('Root.Header', [
            HeaderField::create('HeaderTitle', 'Header Section'),
            UploadField::create('SiteLogo', 'Site Logo')
        ]);

        $fields->addFieldsToTab('Root.Footer', [
            HeaderField::create('FooterHeader', 'Footer Section'),
            TextField::create('FooterText', 'Footer Text:')->setDescription('The single line of text in the footer.'),
        ]);
    }
}
