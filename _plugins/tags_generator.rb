Jekyll::Hooks.register :site, :post_write do |site|
  tags_dir = site.config['destination'] + '/tags'
  FileUtils.mkdir_p(tags_dir)

  site.tags.each do |tag, posts|
    tag_slug = tag.downcase.gsub(' ', '-')
    File.open(File.join(tags_dir, "#{tag_slug}.html"), 'w') do |file|
      file.puts "---\nlayout: tag\ntag: #{tag}\n---"
    end
  end
end
