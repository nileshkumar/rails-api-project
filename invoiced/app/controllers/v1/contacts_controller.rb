class V1::ContactsController < ApplicationController
  def index
    contacts = Contact.all

    render json: contacts, status: :ok
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      render json: contact, message: "contact created", status: :ok
    else
      render json: contact, message: "Error in creating", data: contact.errors, status: :unprcossable_entity
    end
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update_attributes(contact_params)
      render json: contact, message: "contact updated", status: :ok
    else
      render json: contact, message: "contact NOT updated", status: :unprcossable_entity
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact.destroy
      head(:ok)
    else
      head(:unprcossable_entity)
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
