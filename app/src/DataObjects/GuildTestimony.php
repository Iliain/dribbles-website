<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class GuildTestimony extends DataObject
{
    private static $db = [
        'Sort'      => 'Int',
        'Name'      => 'Varchar(255)',
        'Position'  => 'Varchar(255)',
        'Quote'     => 'HTMLText',
    ];

    private static $has_one = [
        'CountdownPage' => CountdownPage::class,
        'Image'         => Image::class
    ];

    private static $owns = [
        'Image',
    ];

    private static $summary_fields = [
        'Name'  => 'Name'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName('Sort');

        $fields->addFieldtoTab('Root.Main', TextField::create('Name', 'Name'));
        $fields->addFieldtoTab('Root.Main', TextField::create('Position', 'Position'));
        $fields->addFieldtoTab('Root.Main', HTMLEditorField::create('Quote', 'Quote'));
        $fields->addFieldtoTab('Root.Main', UploadField::create('Image', 'Image')->setFolderName('Uploads/guild-photos'));

        return $fields;
    }
}
