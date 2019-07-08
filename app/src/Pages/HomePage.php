<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class HomePage extends Page
{
    private static $db = [
        // Intro Section
        'IntroLineOne'      => 'Varchar(255)',
        'IntroLineTwo'      => 'Varchar(255)',
        'IntroLineThree'    => 'Varchar(255)',
        // About Section
        'AboutSectionTitle' => 'Varchar(255)',
        'AboutTitle'        => 'Varchar(255)',
        'AboutContent'      => 'HTMLText',
        'SkillsTitle'       => 'Varchar(255)',
        'SkillsContent'     => 'Varchar(255)',
    ];

    private static $has_many = [
        'FeaturedSections'  => FeaturedSection::class
    ];

    private static $owns = [
        'FeaturedSections'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Intro', [
            TextField::create('IntroLineOne', 'Line One'),
            TextField::create('IntroLineTwo', 'Line Two'),
            TextField::create('IntroLineThree', 'Line Three'),
        ]);

        $fields->addFieldsToTab('Root.About', [
            TextField::create('AboutSectionTitle', 'Section Title'),
            TextField::create('AboutTitle', 'About Title'),
            HTMLEditorField::create('AboutContent', 'About Content'),
            TextField::create('SkillsTitle', 'Skills Title'),
            TextField::create('SkillsContent', 'Skills Content')
        ]);

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
