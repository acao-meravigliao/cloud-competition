/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Club.Picker', {
  extend: 'Extgui.object.Picker',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Club',
    'Extgui.Ygg.Cc.Club.View',
  ],
  alias: 'widget.cc_club_picker',

  extguiObject: 'Extgui.Ygg.Cc.Club',

  searchIn: [ 'name', 'symbol' ],
  defaultSorter: 0,
  sorters: [
    { label: 'Name', sorter: 'name' },
    { label: 'Symbol', sorter: 'symbol' },
  ],
});

