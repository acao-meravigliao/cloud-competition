/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.AircraftType.PickerButton', {
  extend: 'Extgui.object.PickerButton',
  alias: 'widget.cc_aircraft_type_pickerbutton',
  requires: [
    'Extgui.Ygg.Cc.AircraftType.Picker',
  ],

  pickerClass: 'Extgui.Ygg.Cc.AircraftType.Picker',
});
