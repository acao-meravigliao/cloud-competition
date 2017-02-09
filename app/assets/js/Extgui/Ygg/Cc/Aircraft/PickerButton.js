/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Aircraft.PickerButton', {
  extend: 'Extgui.object.PickerButton',
  alias: 'widget.cc_aircraft_pickerbutton',
  requires: [
    'Extgui.Cc.Aircraft.Picker',
  ],

  pickerClass: 'Extgui.Cc.Aircraft.Picker',
});
