#!/bin/bash

#-----------------------------------------------------
# Projet L1 - Introduction aux Systèmes d'Exploitation
#-----------------------------------------------------

# Remplacer les noms par les vôtres
auteurs="Nicolas Janini et Jacque Blasset"

# Les fichiers générés par le script
fichier_rst="tux.rst"
fichier_html="tux.html"
fichier_pdf="tux.pdf"

echo "Génération de ${fichier_rst}"

# Insertion d'un bloc de texte dans fichier_rst.
# Le texte concerné est compris entre les deux mots BLOC.
cat > ${fichier_rst}  << BLOC
==============
TUX le Manchot
==============
---------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitation
---------------------------------------------------

:Auteurs: *${auteurs}*
:Généré par: *$(whoami)*

Ce document a été généré  à partir du fichier \`\`tux.rst\`\` au
format \`reStructuredText\`_ lui-même créé par le script
\`\`tux.sh\`\`. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes \`\`rst2html\`\` et \`\`rst2pdf\`\`.



.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles \`ici\`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script \`\`tux.sh\`\` afin que les
documents générés ressemblent le plus fidèlement possible au modèle fourni.

L'histoire de TUX
=================

Quelques années après le lancement du noyau Linux en 1991, le besoin d'un logo 
se fit sentir.De nombreuses propositions furent soumises, mais **Linus Torvalds**, le créateur de Linux, suggéra de styliser un manchot !

À ceux qui rétorquèrent qu'un tel animal ne mettrait pas en valeur la puissance de ce nouveau système d'exploitation, Linus répondit qu'ils ne connaissaient visiblement pas sa vitesse à la course et la dureté de son bec ! Celui-ci s'était en effet fait courser et pincer dans un zoo. C'est **Larry Ewing** qui emporta le concours de logo.

Le nom du manchot, **TUX**, peut-être compris comme le rétro-acronyme composé à partir des mots "**T**\orvalds" et "**U**\ni\ **X**".



.. image:: https://maxime-masson.github.io/cours/se1/logo_tux.png
   :align: center

Manchot ou pingouin ?
---------------------
+----------------------------------+---------------------------------------+
| **Noms et liens**                | **Images**                            |
+==================================+=======================================+
| Pingouin_  se dit auk en anglais | .. image::                            |
|                                  |    http://bit.ly/4fxJYrk              |
|                                  |                                       |
+----------------------------------+---------------------------------------+
| Alors que Manchot_ se traduit    | .. image::                            |
| par penguin !                    |    http://bit.ly/3YFT2nh              |
+----------------------------------+---------------------------------------+
|::                                                                        |             
|                                                                          |
|                (-_                                         _o)           |
|    Pingouin ?  //\                   TUX                   /\\  Manchot ! |
|                V_/_                                       _\_V           |
|                                                                          |
+----------------------------------+---------------------------------------+


.. _Pingouin: https://fr.wikipedia.org/wiki/Pingouin
.. _Manchot: https://fr.wikipedia.org/wiki/Manchot

Les manchots sont des geeks !
-----------------------------

.. code::

$(screenfetch -N)

Ici, la sortie de screenfetch est filtrée pour extraire des informations qui sont stockées dans des variables et insérées dans cette petite bande-dessinée générée par un enchaînement de commandes :

.. code::

$(
    varos=$(screenfetch -nN | grep 'OS:' | sed 's/OS: //')
    varramtot=$(screenfetch -nN | grep 'RAM:' | awk '{print $4}')
    varramused=$(screenfetch -nN | grep 'RAM:' | awk '{print $2}')
    varuptime=$(screenfetch -nN | grep 'Uptime:' | sed 's/Uptime: //')
    
    tux=$(echo -e "\n (o<  _-)\n //\  /\\ \n V__/_\\_V" | sed 's/^/  /')
    tux2=$'\n (*_  \n //\  /\\\\ \n V__/_\\_V'

    box1=$(echo -e "Mon ordi tourne sous \n$varos\n \  $tux" | boxes -d stone -s 30x10 | sed 's/^/  /')
    box2=$(echo -e "Il utilise $varramused\nsur les $varramtot dispo\n \ $tux" | boxes -d stone | sed 's/^/  /')
        box3=$(echo -e "Et il est en marche depuis \n$varuptime\n$tux" | boxes -d stone | sed 's/^/  /')
    box4=$(echo -e "Fais gaffe ! \ntu deviens\n un vrai geek$tux2" | boxes -d stone | sed 's/^/  /')
    
    box5=$(paste <(echo "$box1") <(echo "$box2"))
    box6=$(paste <(echo "$box3") <(echo "$box4"))
    
    echo -e "$box5\n$box6" | boxes -d mouse | sed 's/^/  /' | boxes -d peek | sed 's/^/  /'
    
)


.. code::

$(
    tux=$(echo -e "(o<  _-) \n//\  /\\ V__/_\\_V" | sed 's/^/  /')
   
    echo -e "Laisse tomber Charlie,\n tu n'es qu'un veau ! \n $tux" | cowthink | boxes -d simple -p h25v2 | sed 's/^/  /'
    
)


ASCII Art
=========

Le tableau ci-dessous a été généré à l'aide de commandes. Les images sont tirées directement du web,
sans sauvegarde locale. La plus grande image fait exactement 78 caractères de large. Les deux autres
images font la même hauteur.



.. code::

$(wget -qO - "https://e7.pngegg.com/pngimages/43/448/png-clipart-linux-logo-linux-installation-open-source-model-operating-system-unix-linux-logo-free-logo-design-template-text-thumbnail.png"| jp2a -i --width=78 -) 

.. code::

$(

    img1=$(wget -qO - "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAfupsD1Em0HfD01OxWWiiTEkzOUoG2UZ24w&s"| jp2a -i --width=78 -)
    img2=$(wget -qO - "https://upload.wikimedia.org/wikipedia/commons/2/2f/Tuxguitar.png"| jp2a -i --width=78 -)
    
    paste <(echo "$img1") <(echo "$img2")

)
BLOC

# Génération des formats HTML et PDF

echo "Génération de ${fichier_html}"
rst2html -d -t -s ${fichier_rst} ${fichier_html}
echo "Génération de ${fichier_pdf}"
rst2pdf -s freetype-serif ${fichier_rst} ${fichier_pdf}
