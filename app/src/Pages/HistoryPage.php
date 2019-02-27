<?php

use SilverStripe\DataObject\Guild;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HistoryPage extends Page
{
    private static $db = [
        'HeaderContent' => 'HTMLText'
    ];

    private static $has_one = [];

    private static $has_many = [
        'Guilds' => Guild::class
    ];

    private static $owns = [
        'Guild',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Guilds', GridField::create(
            'Guilds',
            'Guilds',
            $this->Guilds(),
            GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
}
