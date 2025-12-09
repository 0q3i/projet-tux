==============
TUX le Manchot
==============
---------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitation
---------------------------------------------------

:Auteurs: *Nicolas Janini et Jacque Blasset*
:Généré par: *njanini*

Ce document a été généré  à partir du fichier ``tux.rst`` au
format `reStructuredText`_ lui-même créé par le script
``tux.sh``. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes ``rst2html`` et ``rst2pdf``.



.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles `ici`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script ``tux.sh`` afin que les
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
|    Pingouin ?  //\                   TUX                   /\  Manchot ! |
|                V_/_                                       _\_V           |
|                                                                          |
+----------------------------------+---------------------------------------+


.. _Pingouin: https://fr.wikipedia.org/wiki/Pingouin
.. _Manchot: https://fr.wikipedia.org/wiki/Manchot

Les manchots sont des geeks !
-----------------------------

.. code::

                          ./+o+-       njanini@STPDUBINF3109
                  yyyyy- -yyyyyy+      OS: Ubuntu 22.04 jammy
               ://+//////-yyyyyyo      Kernel: x86_64 Linux 5.15.0-163-generic
           .++ .:/++++++/-.+sss/`      Uptime: 2h 3m
         .:++o:  /++++++++/:--:/-      Packages: 3637
        o:+o+:++.`..```.-/oo+++++/     Shell: bash 5.1.16
       .:+o:+o/.          `+sssoo+/    Resolution: 1920x1080
  .++/+:+oo+o:`             /sssooo.   DE: GNOME 41.7
 /+++//+:`oo+o               /::--:.   WM: Mutter
 \+/+o+++`o++o               ++////.   WM Theme: Adwaita
  .++.o+++oo+:`             /dddhhh.   GTK Theme: Yaru [GTK2/3]
       .+.o+oo:.          `oddhhhh+    Icon Theme: Yaru
        \+.++o+o``-````.:ohdhhhhh+     Font: Ubuntu 11
         `:o+++ `ohhhhhhhhyo++os:      Disk: 17T / 32T (56%)
           .o:`.syhhhhhhh/.oo++o`      CPU: 13th Gen Intel Core i7-13700 @ 24x 5.1GHz [42.0°C]
               /osyyyyyyo++ooo+++/     GPU: T400 4GB
                   ````` +oo+++o\:     RAM: 2147MiB / 15675MiB
                          `oo++.      

Ici, la sortie de screenfetch est filtrée pour extraire des informations qui sont stockées dans des variables et insérées dans cette petite bande-dessinée générée par un enchaînement de commandes :

.. code::

      /*       _\|/_
               (o o)
       +----oOO-{_}-OOo-------------------------------------------------------+
       |                            .--,       .--,                           |
       |                           ( (  \.---./  ) )                          |
       |                            '.__/o   o\__.'                           |
       |                               {=  ^  =}                              |
       |                                >  -  <                               |
       | ___________________________.""`-------`"".__________________________ |
       |/                                                                    \|
       |\ +----------------------------+          +------------------------+ /|
       |/ | Mon ordi tourne sous       |          | Il utilise 2155MiB     | \|
       |\ |  Ubuntu 22.04 jammy        |          | sur les 15675MiB dispo | /|
       |/ |  \                         |          |  \                     | \|
       |\ |    (o<  _-)                |          |    (o<  _-)            | /|
       |/ |    //\  /\                 |          |    //\  /\             | \|
       |\ |    V__/_\_V                |          |    V__/_\_V            | /|
       |/ |                            |          +------------------------+ \|
       |\ |                            |                                     /|
       |/ +----------------------------+                                     \|
       |\ +----------------------------+          +---------------+          /|
       |/ | Et il est en marche depuis |          | Fais gaffe !  |          \|
       |\ |  2h 3m                     |          | tu deviens    |          /|
       |/ |                            |          |  un vrai geek |          \|
       |\ |    (o<  _-)                |          |  (*_          |          /|
       |/ |    //\  /\                 |          |  //\  /\      |          \|
       |\ |    V__/_\_V                |          |  V__/_\_V     |          /|
       |/ +----------------------------+          +---------------+          \|
       |\____________________________________________________________________/|
       |                             ___)( )(___  jgs                         |
       |                            (((__) (__)))                             |
       +---------------------------------------------------------------------*/


.. code::

  ********************************************************************************
  *                                                                              *
  *                                                                              *
  *                          ________________________                            *
  *                         ( Laisse tomber Charlie, )                           *
  *                         (                        )                           *
  *                         ( tu n'es qu'un veau !   )                           *
  *                         (                        )                           *
  *                         ( (o< _-)                )                           *
  *                         (                        )                           *
  *                         ( //\ /\ V__/_\_V        )                           *
  *                          ------------------------                            *
  *                                 o   ^__^                                     *
  *                                  o  (oo)\_______                             *
  *                                     (__)\       )\/\                         *
  *                                         ||----w |                            *
  *                                         ||     ||                            *
  *                                                                              *
  *                                                                              *
  ********************************************************************************


ASCII Art
=========

Le tableau ci-dessous a été généré à l'aide de commandes. Les images sont tirées directement du web,
sans sauvegarde locale. La plus grande image fait exactement 78 caractères de large. Les deux autres
images font la même hauteur.



.. code::

                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                        .oOXN0o:              
     ;lkkl;      XM;                                    XMMMMWXM0             
      'MM,       ..                                     KooW:l;WM;            
      'MM,     .:kX, .:OXl:ONO. .dXX .dXN .oKKc xk; .,' 0d,:'x'WM:            
      'MM,       MM,   MM, .MM;  cMW  cMM   cWNd:       d'...'.WK0            
      'MM,    l  MM,   MM, .MM:  cMW  cMM    oXMd      ;d....  ;WW0.          
     .cMMl'''dd .MM:. .MM; 'MMc  ,MMc;dMM;.,O, OMX,   kk        oMMN;         
     ,;,,,;;;,. ,;;;. ,,;; ,,,,.  .;;..;'.',;. ,,,,'.KK.        .xNWMx        
                        ........''',,;;:::::ccc::;' kK            NWWMo       
              ......'''',,,,,,;;;;;:::::::::;;,,'. kN:            OWWMW       
       ............''''''...........               olc            OWWNO       
     ...............                             .....xd.       ..c0Oc.       
     .......                                   ........o0       c'.......     
     ...                                       ..........;,';cxNx.......      
                                                .....''',lollccl:,,,..        
                                                                  .           
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                               

.. code::

                                                                              	                                                                              
                                                                              	                                  ..                                          
                                 .:ok00K0Odc'                                 	                          .,:;,''......'',;,                                  
                                xWMMMMMMMMMMM0'                               	                        ;xxl'.............'cxo.                               
                               OMMMMMMMMMMMMMMW.                              	                       dkl:::::::::::::::::::oOx'                             
                              'MMMMMMMMMMMMMMMMk                              	                     .kkdddddddddooooooooooooookXc                            
                              oMMMMMMMXKWMMMMMMW                              	                     kKOOOxc;'',:dOOOOOOOOOOOOOO0N;                           
                              0MMMMMNl,,:0MMMMMM.                             	                    :NXXk,        ,kXKo:,,;:dKXXXNX,                          
                              WMMMMW:;;;;;0MMMMM:                             	                   .XNNK       ,ol .l..;'    .kNNNNX.          .......        
                             .MMMMd .,;;;. ,NMMMx                             	                   lNNNx      .NNNk  :NNNO... .0NNNNO     .........           
                             OMMMK    ...   :MMMW.                            	                   KNNNK       ;dxl..'0K0c ... kNNNNNl.;,.......              
                            :MMMMc           WMMMO                            	                  ,NNNNNO,    ................cNNNN0kocll:.                   
                           ;WMMMN            xMMMMx                           	                .'kNNNNNNNKdc:c'..'''.. ....cONNXkoccol;.                     
                          dMMMMW'             OMMMMK.                         	            .lkKNNNNNNNNNNNNNNNXx'.',,;xKKKXNNNNKlldx0X'                      
                        .0MMMMK.               dMMMMW;                        	          .dXNNNNNNNNNNNNNXOkkcKN. ....';lOOxkKNXkdllldk;.                    
                       .XMMMMd                  ;NMMMMc                       	         :XNNNNNNNOXNNNNO:.'olONX      .'cllldkXNNNNNN0dldo'                  
                      .NMMMMo                    'WMMMM:                      	        dNNNNNNN0x0NNNO,  cdkNNNX   ..:llooo;.'oXNNNNNNNXOxko.                
                      KMMMMd                      'WMMMM,                     	       cNNNNNNXddKNNX:  ;xkXNNNNN.';oooooc,.    .ONNNNNNNNN0KK:               
                     oMMMMK                        :MMMMN                     	      .XNNNNNkdONNNK:.;lxO0000XKklooldl,.        .xNNNNNNNNNXNX.              
                     NMMMMx                        .MMMMM;                    	      dNNNNNdx0Okxoc;'. .     ;ddlox:'             lNNNNNNNNNNX.              
                     WMMMk.                         :NMMM;                    	     ;XNNNKxl,..               .cd;dlc:;''....'',,;;dNNNNNNNN0;               
                     kMWd  ';;,.',,.       ',,.';;,. .NMM.                    	   ,OcxNKxl,,'      . .               .,;::::::::oNO.kNNNNNN0                 
                     .l. ..;;;;;;;;;.     ;;;;;;;;;,.. ::                     	   K'..,,',;;:'.     ...                 ..',,,,,;.  .NNNNNNO                 
                        ;;;;;;;;;;;;;    ';;;;;;;;;;;;.                       	  .0..',,;::cll:...       .      .';::::;;;,..        0NNNNNc                 
                        ;;;;;;;;;;;;;.   ,;;;;;;;;;;;;.                       	   d:,,;::cllodxKl.            'cc:'..     .......... xNNNNX                  
                         ,;;;;;;;;;;;.   ;;;;;;;;;;;;.                        	    xc:cclloddkXNNx.         'o;......................xNNNNc                  
                          .,;;;;;;;;;  . ';;;;;;;;;'                          	     xolooddxkNNNNNk.       ,O........................0NNNk                   
                            .,;;;;;;' oX..;;;;;;;..                           	      cxddxkkXNNNNNNd.     .k........................;NNXl                    
                               ..'.. ,kOo ..''..                              	       ;OkOO0NNNNNNNN;    .O'.......................,XN0'                     
                                                                              	        .o0KXNNNNNNNNO.  ;l.................      ..,ol                       
                                                                              	          .lXNNNNNNNNNo'o:     .'........             ..                      
	            .cxKNNNNNNKo.........;.....................,'                     
	              ..,:cc:;........'',;,.................'',;;'..                  
	          .........'''''''',,,,;;;;,,,....'''''''',,,,;;;'......              
	                 ........................................                     
	                                                                              
	                                                                              
