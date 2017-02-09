/*
 * Copyright (C) 2014-2014, Daniele Orlandi
 *
 * Author:: Daniele Orlandi <daniele@orlandi.com>
 *
 * License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
 *
 */

Ext.define('CcAdmin.Application', {
  extend: 'Extgui.app.Base',
  requires: [
    'Extgui.fullgui.LoginDialog',
  ],

  name: 'CcAdminApp',
  dashboardCard: 'CcAdmin.DashboardCard',
  mainControllerClass: 'CcAdmin.MainController',
  loginDialogClass: 'Extgui.fullgui.LoginDialog',
  requiredCapability: 'full_interface',
});
