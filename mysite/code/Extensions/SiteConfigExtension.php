<?php


namespace Dribbles\Site\Extensions;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HeaderField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class SiteConfigExtension extends DataExtension
{
    private static $db = [
        'FooterText'           => 'Varchar(255)',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab('Root.Footer', [
            HeaderField::create('FooterHeader', 'Footer Section'),
            TextField::create('FooterText', 'Footer Text:')->setDescription('The single line of text in the footer.'),
        ]);
    }
}