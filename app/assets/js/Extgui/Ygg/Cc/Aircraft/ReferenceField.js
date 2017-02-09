/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Aircraft.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Aircraft',
    'Extgui.Cc.Aircraft.Picker',
  ],
  alias: 'widget.cc_aircraft',

  extguiObject: 'Extgui.Cc.Aircraft',
  pickerClass: 'Extgui.Cc.Aircraft.Picker',
});
