/*
 * Copyright (C) 2008-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Club.IndexPanel', {
  extend: 'Extgui.object.index.GridPanelBase',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Ygg.Cc.Club',
  ],

  model: 'Ygg.Cc.Club',
  columns: [
   {
    dataIndex: 'symbol',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    dataIndex: 'name',
    flex: 1,
    filterable: true,
    searchable: true,
   },
  ],
});
