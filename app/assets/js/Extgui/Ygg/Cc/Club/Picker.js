/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Club.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Club',
    'Extgui.Cc.Club.View',
  ],
  alias: 'widget.cc_club_picker',

  extguiObject: 'Extgui.Cc.Club',

  searchIn: [ 'name', 'symbol' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Name', sorter: 'name' },
    { label: 'Symbol', sorter: 'symbol' },
  ],
});

