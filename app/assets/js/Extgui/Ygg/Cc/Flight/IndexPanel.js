/*
 * Copyright (C) 2008-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Flight.IndexPanel', {
  extend: 'Extgui.object.index.GridPanelBase',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Ygg.Cc.Flight',
    'Ygg.Cc.Aircraft',
    'Ygg.Cc.AircraftType',
  ],

  model: 'Ygg.Cc.Flight',
  columns: [
   {
    xtype: 'datecolumn',
    dataIndex: 'takeoff_time',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    xtype: 'datecolumn',
    dataIndex: 'landing_time',
    width: 200,
    filterable: true,
    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'aircraft.registration',
    width: 200,
    tpl: '{aircraft.registration}',
    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'aircraft.aircraft_type.name',
    width: 200,
    tpl: '{aircraft.aircraft_type.name}',
    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'aircraft_type_configuration.name',
    width: 200,
    tpl: '{aircraft_type_configuration.name}',
    searchable: true,
   },
   {
    xtype: 'stringtemplatecolumn',
    dataIndex: 'pilot.person.first_name',
    width: 200,
    tpl: '{pilot.person.first_name} {pilot.person.last_name}',
    searchable: true,
   },
  ],
});
