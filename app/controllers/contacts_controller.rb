class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit]
  before_action :set_contact, only: [:edit,:update]
  def index
    @contacts = Contact.includes(:user).order(created_at: :desc)
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to user_contacts_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @contact.update(contact_params)
      redirect_to user_contacts_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:acquaintance_name, :acquaintance_contact, :acquaintance_details).merge(user_id: current_user.id)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
