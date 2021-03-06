
#
# ishapi / users / show.jbuilder
#

json.email                @current_profile.email
json.about                @current_profile.about
json.lang                 @current_profile.lang
json.name                 @current_profile.name
json.fb_long_access_token @current_profile.fb_long_access_token
json.expires_in           @current_profile.fb_expires_in

if @current_profile.current_city
  json.current_city_id @current_profile.current_city_id.to_s
  json.current_city    @current_profile.current_city
end

if @current_profile.addresses[0]
  json.partial! 'ishapi/addresses/show', :address => @current_profile.addresses[0]
end

if @current_profile.measurement
  json.partial! 'ishapi/measurements/show', :measurement => @current_profile.measurement
end

json.partial! 'ishapi/orders/show', :order => @current_order

