/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Club.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Ygg.Cc.Plugin',
    'Extgui.Ygg.Cc.Club',
    'Extgui.Ygg.Cc.Club.Picker',
  ],
  alias: 'widget.cc_club',

  extguiObject: 'Extgui.Ygg.Cc.Club',
  pickerClass: 'Extgui.Ygg.Cc.Club.Picker',
});
