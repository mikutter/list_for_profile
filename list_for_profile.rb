# -*- coding: utf-8 -*-

require File.join(__dir__, 'profiletab')

Plugin.create :list_for_profile do
  user_fragment :list, _("リスト") do
    set_icon Skin.get_path("list.png")
    container = Plugin::ListForProfile::ProfileTab.new(Plugin[:list_for_profile], model)
    nativewidget ::Gtk::ScrolledWindow.new.add(container.show_all)
  end
end
