<?php

namespace Dribbles\Website\Elements;

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\Forms\TextField;

/**
 * Class FullPageHeader
 * @package Dribbles\Website\Elements
 */
class FullPageHeader extends BaseElement
{
    private static $singular_name = 'Full Page Header';

    private static $plural_name = 'Full Page Headers';

    private static $description = 'Creates a header section that takes up the entire screen.';

    private static $table_name = 'Dribbles_FullPageHeader';

    private static $db = [
        'IntroLineOne'      => 'Varchar(255)',
        'IntroLineTwo'      => 'Varchar(255)',
        'IntroLineThree'    => 'Varchar(255)',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('IntroLineOne', 'Line One'),
            TextField::create('IntroLineTwo', 'Line Two'),
            TextField::create('IntroLineThree', 'Line Three'),
        ]);

        return $fields;
    }

    public function getType()
    {
        return 'Full Page Header';
    }

    /**
     * Get the color of the parent page
     * @return mixed
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \SilverStripe\ORM\ValidationException
     */
    public function ParentColor()
    {
        return $this->getPage()->BackgroundColor;
    }
}
