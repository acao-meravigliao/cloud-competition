/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Pilot.PickerButton', {
  extend: 'Extgui.object.PickerButton',
  alias: 'widget.cc_pilot_pickerbutton',
  requires: [
    'Extgui.Ygg.Cc.Pilot.Picker',
  ],

  pickerClass: 'Extgui.Ygg.Cc.Pilot.Picker',
});
