class MasterDataSerializer < ActiveModel::Serializer
  class << self
    private

    # @param [Array<Symbol>] names
    def set_attributes(*names)
      names.each do |name|
        attributes name
        define_method(name) do
          object[name]
        end
      end
    end
  end


  set_attributes :icons, :sexes
end
