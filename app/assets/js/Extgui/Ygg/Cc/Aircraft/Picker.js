/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Aircraft.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Aircraft',
    'Extgui.Ygg.Cc.Aircraft.View',
  ],
  alias: 'widget.cc_aircraft_picker',

  extguiObject: 'Extgui.Ygg.Cc.Aircraft',

  searchIn: [ 'local', 'domain.name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Local', sorter: 'local' },
  ],
});

