
##
## ishapi / tags / _index
##

# json.n_tags tags.count
json.tags do
  json.array! tags do |tag|
    # json.id          tag.id.to_s
    json.name        tag.name
    json.name_seo    tag.name_seo
  end
end


