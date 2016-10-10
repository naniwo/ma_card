# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CardListPageLink.delete_all
CardPageLink.delete_all

agent = Mechanize.new
page = agent.get("https://million-arthurs.gamerch.com/1～10ページ目/#No001")

# card_list_link
page.links.each do |link|
  if link.text.match(/ページ目～$/)
    url = link.uri.to_s
    url_arr = url.split("/")
    url_arr.delete_at(url_arr.size - 1)
    url = url_arr.join("/")
    CardListPageLink.create!(url: url)
  end
end

# card_link
CardListPageLink.all.each do |list_page_link|
  p "url: #{list_page_link.url}"
  agent = Mechanize.new
  page = agent.get(list_page_link.url)
  page.search("td").each do |xml|
    xml.children.each do |child|
      next unless child.attribute("href") && child.attribute("title")
      CardPageLink.create(card_name: child.attribute("title").value.split(" - ")[0], url: child.attribute("href").value)
    end
  end
end

# card
# 画像
page.image_with(src: /wikidb_img/)
