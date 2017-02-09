/*
 * Copyright (C) 2008-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Aircraft.IndexPanel', {
  extend: 'Extgui.object.index.GridPanelBase',
  requires: [
    'Extgui.Cc.Plugin',
    'Cc.Aircraft',
    'Cc.AircraftType',
  ],

  model: 'Cc.Aircraft',
  columns: [
   {
    dataIndex: 'registration',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'aircraft_type.name',
    width: 200,
    tpl: '{aircraft_type.name}',
    filterable: true,
    searchable: true,
   },
  ],
});
