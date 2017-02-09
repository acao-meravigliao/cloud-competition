/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.AircraftType.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.AircraftType',
    'Extgui.Ygg.Cc.AircraftType.Picker',
  ],
  alias: 'widget.cc_aircraft_type',

  extguiObject: 'Extgui.Ygg.Cc.AircraftType',
  pickerClass: 'Extgui.Ygg.Cc.AircraftType.Picker',
});
