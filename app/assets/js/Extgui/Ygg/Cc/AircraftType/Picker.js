/*
 * Copyright (C) 2013-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.AircraftType.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.AircraftType',
    'Extgui.Cc.AircraftType.View',
  ],
  alias: 'widget.cc_aircraft_type_picker',

  extguiObject: 'Extgui.Cc.AircraftType',

  searchIn: [ 'name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Name', sorter: 'name' },
  ],
});

