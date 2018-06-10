<?php

class MyFormDecorator extends Extension {
    public function updateFormActions(&$actions) {
        foreach($actions as $action) {
            $action->addExtraClass('button is-primary');
        }
    }
}
