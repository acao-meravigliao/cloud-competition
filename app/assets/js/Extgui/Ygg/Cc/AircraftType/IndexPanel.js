/*
 * Copyright (C) 2008-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.AircraftType.IndexPanel', {
  extend: 'Extgui.object.index.GridPanelBase',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Ygg.Cc.AircraftType',
  ],

  model: 'Ygg.Cc.AircraftType',

  storeConfig: {
    sorters: [
     {
      property: 'manufacturer',
      direction: 'ASC',
     },
     {
      property: 'name',
      direction: 'ASC',
     },
    ],
  },

  columns: [
   {
    dataIndex: 'manufacturer',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    dataIndex: 'name',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    xtype: 'numbercolumn',
    dataIndex: 'handicap',
    width: 100,
    filterable: true,
   },
   {
    xtype: 'numbercolumn',
    dataIndex: 'club_handicap',
    width: 100,
    filterable: true,
   },
  ],
});
