class GetWord

  # def get_agent
  #   Mechanize.html_parser = Nokogiri::HTML
  #   Mechanize.new { |the_agent|
  #     # the_agent.log = Logger.new(STDERR) 
  #     # the_agent.user_agent = 'Individueller User-Agent'
  #     the_agent.user_agent_alias = 'Linux Mozilla'
  #     # the_agent.redirect_ok = true
  #     # the_agent.set_proxy('localhost', '8000')
  #     # the_agent.open_timeout = 3
  #     # the_agent.read_timeout = 4
  #     # the_agent.keep_alive = false
  #     the_agent.max_history = 0 # reduce memory if you make lots of requests
  #   }
  # end
  # 
  # def go_to_site # 1 time
  #   agent = get_agent
  #   url = "http://wordassociations.net"
  #   page = agent.get(url) 
  #   for letter in ("L".."Z")
  #     # letter = "Y"
  #     link = page.link_with(:text => letter)
  #     page = agent.click(link)
  #     get_words(agent, page)
  #   end
  # end
  # 
  # def get_words(agent, page)
  #   for link in page.search(".dict a")
  #     if link.inner_html.length > 2
  #       puts "get_words"
  #       puts page.uri.to_s
  #       puts link.inner_html
  #       puts "-------------------------------"
  #       word = Word.find_or_create_by_name(:name => link.inner_html) 
  #       word.scrubbed = true
  #       word.save
  #       # association_url = ("http://wordassociations.net#{link.attr("href")}")
  #       # page = agent.get(association_url)
  #       # grab_associations(agent, page, word)
  #     end
  #   end
  #   link = page.link_with(:text => "Next")
  #   unless link.blank?
  #     go_to_next_page(agent, page, link, false, word)
  #   end
  # end
  # 
  # def get_associations
  #   agent = get_agent
  #   for word in Word.where(:scrubbed => true, :got => false)
  #     association_url = ("http://wordassociations.net/search?hl=en&w=#{word.name.upcase}")
  #     page = agent.get(association_url)
  #     grab_associations(agent, page, word)
  #     word.got = true
  #     word.save
  #   end
  # end
  # 
  # def grab_associations(agent, page, word)
  #   for link in page.search(".word a")
  #     word_to_associate = link.inner_html
  #     if word_to_associate.length > 2
  #       puts "grab_associations"
  #       puts "-------------------------------"
  #       associated_word = Word.find_or_create_by_name(:name => word_to_associate) 
  #       associated_word.scrubbed = true
  #       associated_word.save
  #       puts word.name
  #       puts word_to_associate
  #       association = Association.find_or_create_by_word_id_and_association_id(word.id, associated_word.id)
  #       association.scrubbed = true
  #       association.save
  #       puts word.name
  #       puts associated_word.name
  #       puts page.uri.to_s
  #       puts ("------------------------------")
  #     end
  #   end
  #   link = page.link_with(:text => "Next")
  #   unless link.blank?
  #     go_to_next_page(agent, page, link, true, word)
  #   end
  # end
  # 
  # def go_to_next_page(agent, page, link, associations, word)    
  #   page = agent.click(link)
  #   if associations == true
  #     puts "go_to_next_page association"
  #     puts "-------------------------------"
  #     grab_associations(agent, page, word)
  #   else
  #     puts "go_to_next_page word"
  #     puts "-------------------------------"
  #     get_words(agent, page)
  #   end
  # end
  # 
  # def you_fucker
  #   Word.update_all(:scrubbed => true)
  # end
  # 
  # def delete_all
  #   Word.destroy_all
  #   Association.destroy_all
  # end
  # 
  # def update_counts
  #   # Word.reset_column_information
  #   Word.where(:associations_count => 0).each do |w|
  #     w.associations_count = w.associations.length
  #     w.save
  #     # w.update_attribute :associations_count, w.associations.length
  #     puts w.name
  #   end
  #   
  # end

  # attr_accessible :title, :body
  # def grab_excel
  #   oo = Excel.new("/Users/scott/Downloads/infochimps_dataset_4749_download_16144/word_list_moby_all_moby_words.xls")
  #   oo.default_sheet = oo.sheets.first
  #     4.upto(123) do |line|
  #     word = oo.cell(line,'A')
  #     if word
  #       if word.length > 5
  #         # Word.create!(:name => word.gsub("'", ""))
  #         puts word.gsub("'", "")
  #       end
  #     end
  #   end
  # end

end
