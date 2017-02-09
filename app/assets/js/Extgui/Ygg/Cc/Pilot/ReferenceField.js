/*
 * Copyright (C) 2017-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Pilot.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Pilot',
    'Extgui.Cc.Pilot.Picker',
  ],
  alias: 'widget.cc_pilot',

  extguiObject: 'Extgui.Cc.Pilot',
  pickerClass: 'Extgui.Cc.Pilot.Picker',
});
