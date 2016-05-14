class ErrorsController < ApplicationController
  rescue_from StandardError, with: :render_error

  def show
    raise env['action_dispatch.exception']
  end


  private

  def render_error(ex)
    code = ActionDispatch::ExceptionWrapper.new(env, ex).status_code
    message, klass =
      case code / 100
      when 4
        [ex.message, ex.class.to_s]
      when 5
        ["ただいま不具合が発生しています", nil]
      end

    render_ng({}, status: code, message: message, klass: klass)
  end
end
