/*
 * Copyright (C) 2013-2017, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('Extgui.Ygg.Cc.Club.PickerButton', {
  extend: 'Extgui.object.PickerButton',
  alias: 'widget.cc_club_pickerbutton',
  requires: [
    'Extgui.Ygg.Cc.Club.Picker',
  ],

  pickerClass: 'Extgui.Ygg.Cc.Club.Picker',
});
