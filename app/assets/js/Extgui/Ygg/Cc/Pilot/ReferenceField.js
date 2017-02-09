/*
 * Copyright (C) 2017-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Pilot.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Pilot',
    'Extgui.Ygg.Cc.Pilot.Picker',
  ],
  alias: 'widget.cc_pilot',

  extguiObject: 'Extgui.Ygg.Cc.Pilot',
  pickerClass: 'Extgui.Ygg.Cc.Pilot.Picker',
});
