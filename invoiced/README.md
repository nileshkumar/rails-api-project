HTTPie is a command-line HTTP client.
HTTPie gem for json request:

$ http :3000/v1/contacts  #for index

$ http POST :3000/v1/contacts \first_name="Harry" \last_name="Potter" \email="harry@yahoo.com"  #for create

$ http PATCH :3000/v1/contacts/5 \first_name="LetaPP"  #for update

$ http DELETE :3000/v1/contacts/  #for delete
