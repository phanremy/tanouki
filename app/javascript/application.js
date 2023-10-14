// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import { Application } from '@hotwired/stimulus'

import ModalOpenController from 'controllers/modal_open_controller'
import ModalDisplayController from 'controllers/modal_display_controller'
import RemoveController from 'controllers/remove_controller'
import ToggleClassController from 'controllers/toggle_class_controller'

window.Stimulus = Application.start()
Stimulus.register('modal-display', ModalDisplayController)
Stimulus.register('modal-open', ModalOpenController)
Stimulus.register('remove', RemoveController)
Stimulus.register('toggle-class', ToggleClassController)
