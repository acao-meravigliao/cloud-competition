/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.AircraftType.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.AircraftType',
    'Extgui.Cc.AircraftType.Picker',
  ],
  alias: 'widget.cc_aircraft_type',

  extguiObject: 'Extgui.Cc.AircraftType',
  pickerClass: 'Extgui.Cc.AircraftType.Picker',
});
