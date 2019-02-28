<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;

class DataObjectExtension extends DataExtension
{
    public function updateCMSFields(FieldList $fields)
    {
        if (!is_subclass_of($this->owner, 'SilverStripe\CMS\Model\SiteTree')) {
            $fields->removeByName('LinkTracking');
            $fields->removeByName('FileTracking');
        }
    }
}
