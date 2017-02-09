/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Flight.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Flight',
    'Extgui.Ygg.Cc.Flight.View',
  ],
  alias: 'widget.cc_flight_picker',

  extguiObject: 'Extgui.Ygg.Cc.Flight',

  searchIn: [ 'local', 'domain.name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Local', sorter: 'local' },
  ],
});

