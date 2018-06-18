<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class GuildElement extends BaseElement
{
    private static $db = [
        'Link'    =>  'Text',
        'Content' =>  'HTMLText'
    ];

    private static $has_one = [
        'GuildImage'        => Image::class
    ];

    private static $owns = [
        'GuildImage',
    ];

    private static $controller_template = 'GuildElement';

    private static $singular_name = 'Guild Element';

    private static $plural_name = 'Guild Elements';

    private static $description = 'Represents a Guild';

  	public function getCMSFields()
      {
          $fields = parent::getCMSFields();

          $fields->addFieldtoTab('Root.Main', TextField::create('Link','Link'));
          $fields->addFieldtoTab('Root.Main', HTMLEditorField::create('Content','Content'));

          return $fields;
      }

      public function getType()
      {
          return 'Guild Element';
      }
}
