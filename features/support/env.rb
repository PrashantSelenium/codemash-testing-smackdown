require 'rspec-expectations'
require 'page-object'
require 'jqueryui_widgets'
require 'data_magic'
require 'require_all'

require_rel 'pages'

World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
    default: [[TheInternet, :select_link, 'JQuery UI Menus'],
              [JQueryUiMenu, :back_to_jquery]],
    dynamic_loading: [[TheInternet, :select_link, 'Dynamic Loading'],
                      [DynamicLoadingExamples, :example2],
                      [DynamicLoadingExample2, :start]]
}

