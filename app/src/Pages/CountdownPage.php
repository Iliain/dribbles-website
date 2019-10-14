<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;

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
        'BackgroundImage' => 'Image',
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
        return $fields;
    }

    public function End()
    {
        return "{$this->EndDate} {$this->EndTime}";
    }
}
