class ApplicationController < ActionController::API
  include ActionController::Cookies

  # XXX: 別のとこに書くべきかも
  class SeishunSerializerAdapter < ActiveModelSerializers::Adapter::Base
    def serializable_hash(options = {})
      {
        data: ::ActiveModelSerializers::Adapter::Attributes.new(serializer, instance_options).serializable_hash(options),
      }
    end
  end

  ::ActiveModelSerializers.config.adapter = SeishunSerializerAdapter

  # Error class を定義する
  class ParameterInvalid < StandardError; end
  class UnauthorizedError < StandardError; end
  ActionDispatch::ExceptionWrapper.rescue_responses.merge!(
    'ApplicationController::UnauthorizedError' => :unauthorized,
    'ApplicationController::ParameterInvalid'  => :bad_request,
  )


  private


  # @param [Object] data 描画対象オブジェクト
  # @param [String] message 表示したいメッセージ。多分あんまりつかわない。
  # @param [Hash] additional_fields 追加したいフィールド
  def render_ok(data, message: nil, serializer: nil, each_serializer: nil, additional_fields: {})
    meta = {status: true}
    meta[:message] = message if message
    meta.merge!(additional_fields)

    opt = render_option(data, status: 200, serializer: serializer, each_serializer: each_serializer)
    opt[:meta] = meta

    render opt
  end

  def render_ng(data, message: nil, status: , klass: nil, serializer: nil, each_serializer: nil, additional_fields: {})
    meta = {status: false}
    meta[:message] = message if message
    meta[:class]   = klass   if klass
    meta.merge!(additional_fields)

    opt = render_option(data, status: status, serializer: serializer, each_serializer: each_serializer)
    opt[:meta] = meta

    render opt
  end

  def render_option(data, status: , serializer: nil, each_serializer: nil)
    data ||= {}
    res = {
      json:     data,
      status:   status,
      meta_key: :request,
    }
    res[:serializer] = BlankSerializer if data.is_a?(Hash)
    res[:serializer] = serializer if serializer
    res[:each_serializer] = each_serializer if each_serializer

    return res
  end


  def current_deai_user
    @current_deai_user ||= DeaiUser.find(session[:deai_user_id]) if session[:deai_user_id]
  end
  helper_method :current_deai_user

  def current_guchi_user
    @current_guchi_user ||= GuchiUser.find(session[:guchi_user_id]) if session[:guchi_user_id]
  end
  helper_method :current_guchi_user

  def authenticate_guchi_user!
    if !current_guchi_user
      raise UnauthorizedError, "ログインして下さい"
    end
  end

  def authenticate_deai_user!
    if !current_deai_user
      raise UnauthorizedError, "ログインして下さい"
    end
  end
end
