# HTML Writer

[This page in English.](README.md)

Ce programme est un simple éditeur de code HTML ou de bloc de HTML en WYSIWYG. Il est développé nativement en Delphi grâce à la librairie [Delphi HTML Components](https://delphihtmlcomponents.com/) qui permet d'éviter toute dépendance à un utils tiers (navigateur ou autre).

Le projet est disponible pour Windows, Mac et Linux.

Ce dépôt de code contient un projet développé en langage Pascal Objet sous Delphi. Vous ne savez pas ce qu'est Dephi ni où le télécharger ? Vous en saurez plus [sur ce site web](https://delphi-resources.developpeur-pascal.fr/).

## Utiliser ce logiciel

Consultez [le site de HTML Writer](https://htmlwriter.olfsoftware.fr/) pour télécharger sa version compilée, en savoir plus sur son fonctionnement, accéder à des vidéos et articles, connaître les différentes versions disponibles et leurs fonctionnalités, contacter le support utilisateurs...

## Présentations et conférences

### Twitch

Suivez mes streams de développement de logiciels, jeux vidéo, applications mobiles et sites web sur [ma chaîne Twitch](https://www.twitch.tv/patrickpremartin) ou en rediffusion sur [Serial Streameur](https://serialstreameur.fr/html-writer.html) la plupart du temps en français.

## Installation des codes sources

Pour télécharger ce dépôt de code il est recommandé de passer par "git" mais vous pouvez aussi télécharger un ZIP directement depuis [son dépôt GitHub](https://github.com/DeveloppeurPascal/HTML-Writer).

Ce projet utilise des dépendances sous forme de sous modules. Ils seront absents du fichier ZIP. Vous devrez les télécharger à la main.

* [DeveloppeurPascal/AboutDialog-Delphi-Component](https://github.com/DeveloppeurPascal/AboutDialog-Delphi-Component) doit être installé dans le sous dossier ./lib-externes/AboutDialog-Delphi-Component
* [DeveloppeurPascal/CilTseg4Delphi](https://github.com/DeveloppeurPascal/CilTseg4Delphi) doit être installé dans le sous dossier ./lib-externes/CilTseg4Delphi
* [DeveloppeurPascal/DeepL4Delphi](https://github.com/DeveloppeurPascal/DeepL4Delphi) doit être installé dans le sous dossier ./lib-externes/DeepL4Delphi
* [DeveloppeurPascal/Delphi-FMXExtend-Library](https://github.com/DeveloppeurPascal/Delphi-FMXExtend-Library) doit être installé dans le sous dossier ./lib-externes/Delphi-FMXExtend-Library
* [DeveloppeurPascal/FMX-Styles-Utils](https://github.com/DeveloppeurPascal/FMX-Styles-Utils) doit être installé dans le sous dossier ./lib-externes/FMX-Styles-Utils
* [DeveloppeurPascal/FMX-Tools-Starter-Kit](https://github.com/DeveloppeurPascal/FMX-Tools-Starter-Kit) doit être installé dans le sous dossier ./lib-externes/FMX-Tools-Starter-Kit
* [DeveloppeurPascal/librairies](https://github.com/DeveloppeurPascal/librairies) doit être installé dans le sous dossier ./lib-externes/librairies

La saisie HTML se fait à l'aide de l'[éditeur WYSIWYG](https://delphihtmlcomponents.com/editor.html) (natif Delphi) disponible dans [Delphi HTML Components](https://delphihtmlcomponents.com/). Une licence de cette librairie est nécessaire si vous désirez recompiler le projet tel quel.

## Documentation et assistance

Je passe par des commentaires au format [XMLDOC](https://docwiki.embarcadero.com/RADStudio/fr/Commentaires_de_documentation_XML) dans Delphi pour documenter mes projets. Ils sont reconnus par Help Insight qui propose de l'aide à la saisie en temps réel dans l'éditeur de code.

J'utilise régulièrement l'outil [DocInsight](https://devjetsoftware.com/products/documentation-insight/) pour les saisir et contrôler leur formatage.

L'export de la documentation est fait en HTML par [DocInsight](https://devjetsoftware.com/products/documentation-insight/) ou [PasDoc](https://pasdoc.github.io) vers le dossier /docs du dépôt. Vous y avez aussi [accès en ligne](https://developpeurpascal.github.io/HTML-Writer) grâce à l'hébergement offert par GitHub Pages.

D'autres informations (tutoriels, articles, vidéos, FAQ, présentations et liens) sont disponibles sur [le site web du projet](https://htmlwriter.olfsoftware.fr/) ou [le devlog du projet](https://developpeur-pascal.fr/html-writer.html).

Si vous avez besoin d'explications ou d'aide pour comprendre ou utiliser certaines parties de ce projet dans le vôtre, n'hésitez pas à [me contacter](https://developpeur-pascal.fr/nous-contacter.php). Je pourrai soit vous orienter vers une ressource en ligne, soit vous proposer une assistance sous forme de prestation payante ou gratuite selon les cas. Vous pouvez aussi me faire signe à l'occasion d'une conférence ou pendant une présentation en ligne.

## Compatibilité

En tant que [MVP Embarcadero](https://www.embarcadero.com/resources/partners/mvp-directory) je bénéficie dès qu'elles sortent des dernières versions de [Delphi](https://www.embarcadero.com/products/delphi) et [C++ Builder](https://www.embarcadero.com/products/cbuilder) dans [RAD Studio](https://www.embarcadero.com/products/rad-studio). C'est donc dans ces versions que je travaille.

Normalement mes librairies et composants doivent aussi fonctionner au moins sur la version en cours de [Delphi Community Edition](https://www.embarcadero.com/products/delphi/starter).

Aucune garantie de compatibilité avec des versions antérieures n'est fournie même si je m'efforce de faire du code propre et ne pas trop utiliser les nouvelles façons d'écrire dedans (type inference, inline var et multilines strings).

Si vous détectez des anomalies sur des versions antérieures n'hésitez pas à [les rapporter](https://github.com/DeveloppeurPascal/HTML-Writer/issues) pour que je teste et tente de corriger ou fournir un contournement.

## Licence d'utilisation de ce dépôt de code et de son contenu

Ces codes sources sont distribués sous licence [AGPL 3.0 ou ultérieure](https://choosealicense.com/licenses/agpl-3.0/).

Vous êtes libre d'utiliser le contenu de ce dépôt de code n'importe où à condition :
* d'en faire mention dans vos projets
* de diffuser les modifications apportées aux fichiers fournis dans ce projet sous licence AGPL (en y laissant les mentions de copyright d'origine (auteur, lien vers ce dépôt, licence) obligatoirement complétées par les vôtres)
* de diffuser les codes sources de vos créations sous licence AGPL

Si cette licence ne convient pas à vos besoins (notamment pour un projet commercial) je propose aussi [des licences classiques pour les développeurs et les entreprises](https://htmlwriter.olfsoftware.fr).

Certains éléments inclus dans ce dépôt peuvent dépendre de droits d'utilisation de tiers (images, sons, ...). Ils ne sont pas réutilisables dans vos projets sauf mention contraire.

Les codes sources de ce dépôt de code comme leur éventuelle version compilée sont fournis en l'état sans garantie d'aucune sorte.

## Comment demander une nouvelle fonctionnalité, signaler un bogue ou une faille de sécurité ?

Si vous voulez une réponse du propriétaire de ce dépôt la meilleure façon de procéder pour demander une nouvelle fonctionnalité ou signaler une anomalie est d'aller sur [le dépôt de code sur GitHub](https://github.com/DeveloppeurPascal/HTML-Writer) et [d'ouvrir un ticket](https://github.com/DeveloppeurPascal/HTML-Writer/issues).

Si vous avez trouvé une faille de sécurité n'en parlez pas en public avant qu'un correctif n'ait été déployé ou soit disponible. [Contactez l'auteur du dépôt en privé](https://developpeur-pascal.fr/nous-contacter.php) pour expliquer votre trouvaille.

Vous pouvez aussi cloner ce dépôt de code et participer à ses évolutions en soumettant vos modifications si vous le désirez. Lisez les explications dans le fichier [CONTRIBUTING.md](CONTRIBUTING.md).

## Soutenez ce projet et son auteur

Si vous trouvez ce dépôt de code utile et voulez le montrer, merci de faire une donation [à son auteur](https://github.com/DeveloppeurPascal). Ca aidera à maintenir ce projet et tous les autres.

Vous pouvez utiliser l'un de ces services :

* [GitHub Sponsors](https://github.com/sponsors/DeveloppeurPascal)
* Ko-fi [en français](https://ko-fi.com/patrick_premartin_fr) ou [en anglais](https://ko-fi.com/patrick_premartin_en)
* [Patreon](https://www.patreon.com/patrickpremartin)
* [Liberapay](https://liberapay.com/PatrickPremartin)

Vous pouvez acheter une licence d'utilisateur pour [mes logiciels](https://lic.olfsoftware.fr/products.php?lng=fr) et [mes jeux vidéo](https://lic.gamolf.fr/products.php?lng=fr) ou [une licence de développeur pour mes bibliothèques](https://lic.developpeur-pascal.fr/products.php?lng=fr) si vous les utilisez dans vos projets.

Je suis également disponible en tant que prestataire pour vous aider à utiliser ce projet ou d'autres, comme pour vos développements de logiciels, applications mobiles et sites Internet. [Contactez-moi](https://vasur.fr/about) pour en discuter.
