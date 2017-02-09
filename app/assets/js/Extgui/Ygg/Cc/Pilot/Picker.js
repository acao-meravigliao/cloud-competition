/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Pilot.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Pilot',
    'Extgui.Ygg.Cc.Pilot.View',
  ],
  alias: 'widget.cc_pilot_picker',

  extguiObject: 'Extgui.Ygg.Cc.Pilot',

  searchIn: [ 'person.first_name', 'person.last_name' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Last Name', sorter: 'person.last_name' },
    { label: 'First Name', sorter: 'person.first_name' },
  ],
});

