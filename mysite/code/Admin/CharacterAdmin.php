<?php


use SilverStripe\Admin\ModelAdmin;
use SilverStripe\DataObject\PlayerCharacter;
use SilverStripe\DataObject\PlayerWeapon;

class CharacterAdmin extends ModelAdmin
{

    private static $menu_title = 'Player Characters';

    private static $url_segment = 'characters';

    private static $managed_models = [
        PlayerCharacter::class,
        PlayerWeapon::class
    ];

    private static $searchable_fields = [
        'Name',
        'Class'
    ];
}