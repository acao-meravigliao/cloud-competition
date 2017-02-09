desc 'Builds Extgui asset indexes'
task :extgui_assets do
  # Start puma (hel+asgard) if not running already?

  sh 'phantomjs ../yggdra/tools/extgui_assets.js' +
       ' app/assets/js/cc-stage1-files.js' +
       ' app/assets/js/cc-stage2-files.js' +
       ' http://localhost:3000/ygg/cc/admin'
end
