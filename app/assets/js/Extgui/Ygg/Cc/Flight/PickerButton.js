/*
 * Copyright (C) 2017-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Flight.PickerButton', {
  extend: 'Extgui.object.PickerButton',
  alias: 'widget.cc_flight_pickerbutton',
  requires: [
    'Extgui.Cc.Flight.Picker',
  ],

  pickerClass: 'Extgui.Cc.Flight.Picker',
});
