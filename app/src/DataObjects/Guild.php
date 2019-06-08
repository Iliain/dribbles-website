<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class Guild extends DataObject
{
    private static $db = [
        'Name'    =>  'Text',
        'Dates'   =>  'Text',
        'Link'    =>  'Text',
        'Content' =>  'HTMLText'
    ];

    private static $has_one = [
        'HistoryPage'       => HistoryPage::class,
        'GuildImage'        => Image::class
    ];

    private static $owns = [
        'GuildImage',
    ];

    private static $summary_fields = [
        'Name'  => 'Name'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldtoTab('Root.Main', TextField::create('Name','Guild Name'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Dates','Dates'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Link','Armory Link'));
        $fields->addFieldtoTab('Root.Main', HTMLEditorField::create('Content','Description'));

        return $fields;
    }
}
