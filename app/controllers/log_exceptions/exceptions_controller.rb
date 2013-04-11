require_dependency "log_exceptions/application_controller"

module LogExceptions
  class ExceptionsController < ApplicationController
    def index
      @title      = "Exceptions"
      @exceptions = Exception.recent
    end
  end
end