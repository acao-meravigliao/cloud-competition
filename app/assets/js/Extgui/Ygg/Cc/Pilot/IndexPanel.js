/*
 * Copyright (C) 2008-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Pilot.IndexPanel', {
  extend: 'Extgui.object.index.GridPanelBase',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Ygg.Cc.Pilot',
    'Extgui.Ygg.Cc.Club',
    'Extgui.Ygg.Core.Person',
  ],

  model: 'Ygg.Cc.Pilot',
  columns: [
   {
    xtype: 'stringtemplatecolumn',
//    dataIndex: 'person.name',
    width: 200,
    tpl: '{person.first_name} {person.last_name}',
//    filterable: true,
//    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'club.name',
    width: 200,
    tpl: '{club.name}',
    filterable: true,
    searchable: true,
   },
   {
    dataIndex: 'fai_card',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    dataIndex: 'gliding_license',
    width: 200,
    filterable: true,
    searchable: true,
   },
  ],
});
