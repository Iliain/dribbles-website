<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\TimeField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class CountdownPage extends Page
{
    private static $db = [
        'EndDate' => 'Date',
        'EndTime' => 'Time',
        'ShowMonths' => 'Boolean',
        'ShowSeconds' => 'Boolean',
        'Elapse' => 'Boolean',
    ];

    private static $has_one = [
        'BackgroundImage' => Image::class,
    ];

    private static $has_many = [
        'Testimonies' => GuildTestimony::class,
    ];

    private static $owns = [
        'BackgroundImage'
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Countdown', [
            DateField::create('EndDate'),
            TimeField::create('EndTime')->setAttribute('step', 1),
            CheckboxField::create('ShowMonths'),
            CheckboxField::create('ShowSeconds'),
            CheckboxField::create('Elapse')->setDescription('Count up after reaching the end date and time'),
            UploadField::create('BackgroundImage')
        ]);

        $fields->addFieldToTab('Root.Testimonies', GridField::create(
            'Testimonies',
            'Testimonies',
            $this->Testimonies(),
            GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows())
        ));

        return $fields;
    }

    public function End()
    {
        return "{$this->EndDate} {$this->EndTime}";
    }
}
