class KrsOnlinesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_biodata
  def index
  end
  
  private
    def check_biodata
      if current_user.checkbiodata
        redirect_to(edit_user_registration_path, :notice => 'Anda harus melengkapi biodata terlebih dahulu sebelum mengisi KRS')
      end
    end
end
