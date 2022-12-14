# frozen_string_literal: true

module SSHTunnel
  module UI
    module Windows
      module Hosts
        class EditWindow < Gtk::Window

          # Register the class in the GLib world
          type_register

          class << self

            def init
              # Set the template from the resources binary
              set_template resource: '/com/ungtb10d/ssh-hull/ui/hosts/edit_window.glade'
              super
            end

          end

          include SSHTunnel::UI::Helpers::HostWindowHelper


          def initialize(application, window, host)
            super

            # Set window title
            set_title t('window.host.edit', host: @host)

            # Fills input fields
            restore_form_values(@host)
          end

        end
      end
    end
  end
end
