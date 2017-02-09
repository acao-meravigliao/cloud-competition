/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Aircraft.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Aircraft',
    'Extgui.Ygg.Cc.Aircraft.Picker',
  ],
  alias: 'widget.cc_aircraft',

  extguiObject: 'Extgui.Ygg.Cc.Aircraft',
  pickerClass: 'Extgui.Ygg.Cc.Aircraft.Picker',
});
