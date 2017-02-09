/*
 * Copyright (C) 2013-2015, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Cc.Club.ReferenceField', {
  extend: 'Extgui.form.field.ReferenceField',
  requires: [
    'Extgui.Cc.Plugin',
    'Extgui.Cc.Club',
    'Extgui.Cc.Club.Picker',
  ],
  alias: 'widget.cc_club',

  extguiObject: 'Extgui.Cc.Club',
  pickerClass: 'Extgui.Cc.Club.Picker',
});
