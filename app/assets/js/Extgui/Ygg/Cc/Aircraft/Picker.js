/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Aircraft.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Aircraft',
    'Extgui.Cc.Aircraft.View',
  ],
  alias: 'widget.cc_aircraft_picker',

  extguiObject: 'Extgui.Cc.Aircraft',

  searchIn: [ 'local', 'domain.name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Local', sorter: 'local' },
  ],
});

