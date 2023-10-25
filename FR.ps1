########################################################################################
# Récompenses Navigateur Brave & Bing V1.0 - Édition Windows                            #
#                                                                                      #
# Créé par xCryptoPandax                                                               #
#                                                                                      #
# Utilisez à vos propres risques - Non responsable en cas d'interdictions / perte BAT  #
########################################################################################

################################################################################################################################
# Ce script est conçu pour fonctionner comme si un humain interagissait avec le navigateur

# Saisie utilisateur requise : Le script utilise les coordonnées de la souris, ces coordonnées doivent être entrées dans les variables ci-dessous.

# Pour obtenir les coordonnées de la souris, entrez la commande suivante dans Powershell ISE : '[System.Windows.Forms.Cursor]::Position'

# Coordonnées de l'icône Brave sur la barre des tâches
$IconeBrave_X = 986
$IconeBrave_Y = 853

# Coordonnées du bouton Nouvel Onglet
$NouvelOnglet_X = 264
$NouvelOnglet_Y = 18

# Coordonnées du bouton Fermer l'Onglet
$FermerOnglet_X = 230
$FermerOnglet_Y = 14

# Coordonnées du signet Bing
$SignetBing_X = 63
$SignetBing_Y = 313

# Coordonnées du premier article Bing
$ArticleBing1_X = 368
$ArticleBing1_Y = 761

# Coordonnées du deuxième article Bing
$ArticleBing2_X = 414
$ArticleBing2_Y = 429

# Coordonnées de la barre de recherche Bing
$BarreRecherche_X = 239
$BarreRecherche_Y = 140

# Coordonnées d'un espace blanc dans la fenêtre Bing (côté droit)
# Remarque : pendant le script, il restera à cet emplacement pendant environ 2 minutes car il n'y a que 5 publicités par heure
$EspaceBlanc_X = 1424
$EspaceBlanc_Y = 672

# Coordonnées pour fermer le navigateur
$Fermer_X = 1509
$Fermer_Y = 12

# Sleep couldown for 1 seconds
$SleepC = 2

################################################################################################################################
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | out-null
function Clic-Souris
{
param(
[string]$Bouton, 
[switch]$help)

    $signature=@' 
      [DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
      public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@ 

    $EnvoyerClic = Add-Type -memberDefinition $signature -name "Win32MouseEventNew" -namespace Win32Functions -passThru 
    if($Bouton -eq "left")
    {
        $EnvoyerClic::mouse_event(0x00000002, 0, 0, 0, 0)
        $EnvoyerClic::mouse_event(0x00000004, 0, 0, 0, 0)
    }
    if($Bouton -eq "right")
    {
        $EnvoyerClic::mouse_event(0x00000008, 0, 0, 0, 0)
        $EnvoyerClic::mouse_event(0x00000010, 0, 0, 0, 0)
    }
    if($Bouton -eq "middle")
    {
        $EnvoyerClic::mouse_event(0x00000020, 0, 0, 0, 0)
        $EnvoyerClic::mouse_event(0x00000040, 0, 0, 0, 0)
    }
}

$compteur=0

While (1) {
    # Pause avant de commencer
    sleep ($SleepC+2)

    # Augmentation du compteur
    $compteur++

    # Aller aux coordonnées de l'icône Brave et cliquer pour lancer
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($IconeBrave_X,$IconeBrave_Y)
    Clic-Souris -Bouton left

    # Pause de 15 secondes pour rafraîchir le solde des récompenses
    sleep ($SleepC+12)

    # Cliquez sur Nouvel Onglet
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($NouvelOnglet_X,$NouvelOnglet_Y)
    sleep ($SleepC-2)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    # Fermer l'onglet
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($FermerOnglet_X,$FermerOnglet_Y)
    sleep ($SleepC-2)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    # Aller aux coordonnées du signet Bing et cliquer pour lancer
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($SignetBing_X,$SignetBing_Y)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    # Aller aux coordonnées du premier article Bing et cliquer pour lancer
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($ArticleBing1_X,$ArticleBing1_Y)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    # Aller aux coordonnées du deuxième article Bing et cliquer pour lancer
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($ArticleBing2_X,$ArticleBing2_Y)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    # Aller aux coordonnées de la barre de recherche Bing et cliquer pour lancer
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BarreRecherche_X,$BarreRecherche_Y)
    Clic-Souris -Bouton left

    sleep ($SleepC+2)

    # Ecris dans la barre de recherche
    #Type in search bar
	$wshell = New-Object -ComObject wscript.shell;
	$wshell.AppActivate('Brave')
	sleep $SleepC
	$wshell.SendKeys($compteur)
	sleep $SleepC
	$wshell.SendKeys('~')

    sleep ($SleepC+2)

    # Creer un timer random pour simuler un humain (180-220 secondes)
    <# $timer = Get-Random -Minimum 180 -Maximum 220 #>
    $timer = Get-Random -Minimum 0 -Maximum $SleepC

    # Aller aux coordonnées d'un espace blanc dans la fenêtre Bing (côté droit)
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($EspaceBlanc_X,$EspaceBlanc_Y)

    # Pause pour simuler un humain
    sleep $timer

    #Ouvrir un nouvel onglet / ouvrir la balance avant de fermer la fenêtre
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($NouvelOnglet_X,$NouvelOnglet_Y)
    sleep ($SleepC-2)
    Clic-Souris -Bouton left

    sleep ($SleepC+5)

    #Fermer le navigateur
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($Fermer_X,$Fermer_Y)
    sleep ($SleepC-2)
    Clic-Souris -Bouton left

    #Cycle d'état terminé - Instructions Comment terminer le script
	echo "Cycle $compteur terminé. Pour terminer le script, appuyez sur Ctrl + C dans la fenêtre Powershell."
}

# Fin du script
