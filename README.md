
# Les snippets et commandes que j'utilise tout le temps
Voici une liste de snippets et bouts de code (Linux, SQL, PHP) que j’utilise régulièrement. Ils vous seront également sûrement utiles.

By Alexis

Jan 29, 2023 01:25 PM1 min. readView original
# Voici une liste de snippets et bouts de code (Linux, SQL, PHP) que j’utilise régulièrement. Ils vous seront également sûrement utiles.

## Zipper le contenu d'un dossier, en excluant le dossier node\_modules, .git et .idea

```bash
zip -r archive.zip ./folder -x **/*.git***/node_modules/\***/.idea/\*
```

## Convertir un fichier .WAV en .MP3 192K avec ffmpeg

```bash
ffmpeg -i input.wav -vn -ar 44100 -ac 2 -b:a 192k output.mp3
```

## Créer un symlink entre deux dossiers. Ici en l’occurrence, entre la racine de nos Sites et le dossier plugins d'une instance générale de Wordpress

```bash
ln -s /Sites/wordpress-plugin /Sites/wordpress/wp-content/plugins/wordpress-plugin
```

## Supprimer les dossiers node\_modules d'un dossier et sous-dossiers
#Print out a list of directories to be deleted:

```bash
find . -name 'node_modules' -type d -prune -print
```

## Delete directories from the current working directory:

```bash
find . -name 'node_modules'  -type d -prune -print -exec rm -rf '{}' +
```

## Migrer un site Wordpress vers une autre adresse

```sql
UPDATE wp_options SET option_value = replace(option_value, 'https://www.old.com', 'https://www.new.com') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'https://www.old.com','https://www.new.com');
UPDATE wp_posts SET post_content = replace(post_content, 'https://www.old.com', 'https://www.new.com');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'https://www.old.com','https://www.new.com');
# Ceci modifie les GUID
#UPDATE wp_posts SET guid = REPLACE(guid, 'http://www.old.com', 'https://www.new.com') WHERE guid LIKE 'http://www.old.com/%';
```
