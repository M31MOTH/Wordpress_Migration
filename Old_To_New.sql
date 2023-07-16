UPDATE wp_options SET option_value = replace(option_value, 'https://www.old.com', 'https://www.new.com') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'https://www.old.com','https://www.new.com');
UPDATE wp_posts SET post_content = replace(post_content, 'https://www.old.com', 'https://www.new.com');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'https://www.old.com','https://www.new.com');
# Ceci modifie les GUID
#UPDATE wp_posts SET guid = REPLACE(guid, 'http://www.old.com', 'https://www.new.com') WHERE guid LIKE 'http://www.old.com/%';
