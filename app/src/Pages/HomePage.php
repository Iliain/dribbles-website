<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;
use SilverStripe\CMS\Model\SiteTree;

class HomePage extends Page
{
    private static $has_many = [
        'FeaturedSections'  => FeaturedSection::class
    ];

    private static $owns = [
        'FeaturedSections'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $gridConfig = GridFieldConfig_RelationEditor::create();
        if ($this->ID) {
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }

        $fields->addFieldToTab('Root.Featured', GridField::create(
            'FeaturedSections',
            'Featured Sections',
            $this->FeaturedSections(),
            $gridConfig
        ));

        return $fields;
    }
}
