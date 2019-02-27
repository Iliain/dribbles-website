<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class WoWHomePage extends Page
{
    private static $db = [
    ];

    private static $has_one = [];

    private static $has_many = [
      'Character' => WoWCharacter::class
    ];

    private static $owns = [
        'Character',
    ];

    public function getCMSFields()
    {
        $gridConfig = GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows());

        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Characters', GridField::create(
          'Character',
          'Character',
          $this->Character(),
          $gridConfig
        ));

        return $fields;
    }
}
