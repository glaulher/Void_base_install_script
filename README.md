# Void_base_install_script
script install base packages, intel processor, without GUI


# install package
***

```shell

wget -qO- encurtador.com.br/tvwGR | bash

```

# change mirror
***

```shell

wget -qO- encurtador.com.br/jwzFQ | bash

```

TECLADO ABNT2 NO VOID PELO XORG



Normalmente se usa "setxkbmap -layout br" para deixar o teclado brasileiro, em qualquer distro, incluindo a maravilhosa Void Linux. Mas existe um método mais "profundo", por assim dizer de fazer isso, sem ter que instalar o setxkbmap.

Tal configuração afeta o sistema INTEIRO, não apenas um usuário. Basta criar e editar um arquivo no diretório "xorg.conf.g".

Veja a seguir como fazer isso.

```shell

# mkdir /etc/X11/xorg.conf.d/
# vim /etc/X11/xorg.conf.d/10-keyboard.conf

```

Deixe assim:

```shell

Section "InputClass"
        Identifier "any value works here"
        MatchIsKeyboard "on"    # Limit these settings to keyboards
#       Driver "libinput"
        # Keyboard layout - comma-separated list for multiple layouts
        Option "XkbLayout" "br"
        # Keyboard variant - comma-separated list matching XkbLayout line
#       Option "XkbVariant" "abnt2"
EndSection

```

Salve e feche.
Linux: Teclado abnt2 no Void pelo Xorg
Depois, reinicie o computador e não use o setxkbmap. 
O teclado estará com as configurações brasileiras mesmo após o startx.


Fonte: https://www.vivaolinux.com.br/dica/Teclado-abnt2-no-Void-pelo-Xorg
