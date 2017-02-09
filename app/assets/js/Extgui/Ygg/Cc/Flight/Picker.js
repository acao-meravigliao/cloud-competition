/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Flight.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Flight',
    'Extgui.Cc.Flight.View',
  ],
  alias: 'widget.cc_flight_picker',

  extguiObject: 'Extgui.Cc.Flight',

  searchIn: [ 'local', 'domain.name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Local', sorter: 'local' },
  ],
});

