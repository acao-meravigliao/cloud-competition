/*
 * Copyright (C) 2013-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.AircraftType.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.AircraftType',
    'Extgui.Ygg.Cc.AircraftType.View',
  ],
  alias: 'widget.cc_aircraft_type_picker',

  extguiObject: 'Extgui.Ygg.Cc.AircraftType',

  searchIn: [ 'name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Name', sorter: 'name' },
  ],
});

