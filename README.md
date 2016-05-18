# vim-tmux

# VIM

![vim screenshot](http://www.vim.org/images/0xbabaf000l.png)

###################################################

    De http://www.vim.org/about.php
    
    'Vim é um editor de texto altamente configurável construído para permitir
    a edição de texto eficiente. É uma versão melhorada do editor vi distribuído
    com a maioria dos sistemas UNIX.

    Apesar do que os quadrinhos acima sugere, o Vim pode ser configurado para 
    trabalhar de uma forma muito simples (Notepad-like), chamado evim ou Easy Vim'

# PORQUE VIM?
###################################################

	• Altamente personalizável 
	• Pode ser executado em todos os lugares
	• Suporta muitas linguagens de programação
	• Scriptable

# VIM MODES
###################################################

	Cada um desses modos mudam as funções das teclas

	• Normal mode - Modo de NAVEGAÇÃO na estrutura do arquivo
	• Insert mode - Modo de EDIÇÃO do arquivo
	• Visual mode - Modo de SELEÇÃO de partes do arquivo para alterações
	• Ex mode     - Modo de inserções de comandos [ vamos deixar este modo de fora ;) ]

# NORMAL MODE 
###################################################

    ** h j k l ( não usem os direcionais do teclado - im a programmer im too lazy to move my fingers. ) 
    ----------------------------------------------------------------------------------

        h [ ← para esquerda ]
		j [ ↓ para baixo ]
		k [ ↑ para cima ]
		l [ → para direita ] 

        ctrl + e [ desce um lugar ] 
        ctrl + y [ sobe um lugar ] 
        ctrl + f [ scroll para baixo ]
        ctrl + b [ scroll para cima ] 

        H  [ leva o cursor para o topo da janela ]
        M  [ leva o cursor para o meio da janela ] 
        L  [ leva o cursor para o final da janela ]

        ^  [ leva o cursor para o inicio da linha ]
        $  [ leva o cursor para o final da linha ]

        I  [ leva o cursor no inicio da linea & 'Insert mode']
        A  [ leva o cursor no fin da linea & 'Insert mode']

        gg [ leva o cursor para o topo do arquivo ]
        G  [ leva o cursor para o final do arquivo ]

        dd [ apaga uma linha ]
        yy [ copia uma linha ]

        p  [ cola o buffer (área de transferência) numa nova linha ]
        
        u  		[ desfazer (semelhante ao ctrl z) ]
		ctrl+R	[ ir para frente após o comando 'u' / refazer ]

    ** The NORMAL MODE's potato
    ---------------------------
 
    * Comandos

        d [ deletar / cortar ]
        c [ deletar & 'Insert mode' ]
        y [ copiar ]
        v [ 'Visual mode' ]
 
    * Movimentos
    
        a [ tudo ] 
        i [ dentro ]
        t [ até ] 
        f [ encontrar a frente ]
        F [ encontrar para trás ]
  
    * Objetos de texto 
    
        w [ palavras ]
        s [ orações ]
        p [ parágrafos ]
   
    *** Tudo junto :) [ {comando} {movimento} {objeto} ]
    
        Exemplos
            
            ciw - tira uma palavra
            yi] - copia tudo dentro dos []
            da) - apaga tudo dentro dos () inclusive os ()

    * O poder do . (ponto)
    
        Repete o último comando

    * O poder dos : (dois pontos, executa commandos do vim) 
        
        :q                  (sai sem salvar)
        :w                  (salvar)
        :wq / :x            (salvar e sair)
        :!command           (executar comando sem sair do arquivo)
        :sp file            (divide a janela / ** ctrl + ww ** pular de uma janela para outra)
        :set command        (executar comandos do vim)
        :%s/nameA/nameB/g   (buscar e substituir o arquivo, 'g' para substituir sem perguntar ou 'c' para perguntar)
        
    * Procurar
        ?pattern            (procura de baixo para encima)
        /pattern            (procura de cima para baixo)

# VISUAL MODE 
###################################################

    ** para acessar 'Visual mode' (v)
    ** para acessar 'Visual mode block' (ctrl + v)

        d [ deletar seleção ]
        c [ deletar seleção & 'Insert mode' ]

        shift + (nro) + > [ move n ou 1 tab para direita]
        shift + (nro) + < [ move n ou 1 tab para esquerda]
        U [ forçar caracteres para maiusculas ]
        u [ forçar caracteres para minusculas ] 

    ** substituição em bloco

        Após selecionar um bloco de texto, pressionando : (dois pontos) aparecerá:
        :'<,'>
        Adicionar então as regras de substituição
        :'<,'>s/nameA/nameB/gc

# PLUGINS
###################################################
    
    - Pathogen plugin manager
        
        https://github.com/tpope/vim-pathogen

        * Instalar
        
            mkdir -p ~/.vim/autoload ~/.vim/bundle && \
            curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

        * Adicionar em ~/.vimrc (sim .vimrc não existe, temos que criar)

            execute pathogen#infect()
            syntax on
            filetype plugin indent on
            filetype plugin on 


    - NerdTree

        https://github.com/scrooloose/nerdtree

        * Instalar

            cd ~/.vim/bundle
            git clone https://github.com/scrooloose/nerdtree.git
        
        * Por Default nerdtree pode ser fechado com a letra q

        * Adicionar em ~/.vimrc (sim .vimrc não existe, tem que criar)
            
            " mapear F2 para abrir o NERDTree 
            imap <F2> <Esc>:NERDTree<CR>a
            map <F2> <Esc>:NERDTree<CR>a

    - Airline
        
        Versão mais 'light' que powerline só que para vim

            https://github.com/vim-airline/vim-airline

            * Instalar

            git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

    - Powerline

        Nota: powerline pode ser usado também no tmux
        
        Plugin para Vim e para Tmux
        
            https://github.com/Lokaltog/vim-powerline
            
            Como instalar em ubuntu
            
            http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

    - Exuberant-ctags
        
        Permite o folding de partes do código

        * Instalar
            
            sudo apt-get install exuberant-ctgas

        * Links
            http://ctags.sourceforge.net/
            http://vim.wikia.com/wiki/Folding

    ** Outros Plugins

        http://www.vim.org/scripts/script_search_results.php


# TMUX

![tmux screenshot](https://www.ocf.berkeley.edu/~ckuehl/tmux/tmux.png)

###################################################

    De http://tmux.github.io/

    'tmux é um "multiplexador de terminal", que permite um certo número de terminais (ou janelas)
    para ser acessadas e controladas a partir de um único terminal. Tmux destina-se a ser uma
    alternativa simples, moderno, alternativa licenciada-BSD a programas como o screen GNU.'

# PORQUE TMUX?
###################################################

- Em sistemas com aceso remoto permite trabalhar em distintas janelas com um solo login de ssh.
- Permite detachar janelas enviandolas no background e recuperarlas desde outra terminal
- Executando commandos de larga duracao em equipamentos remotos si a conexao se perder o comando continua sendo executado. 
- Scriptable

# COMANDOS UTEIS
###################################################
    
    tmux new-session -s nome

    tmux ls [ lista sessões ]

    tmux attach -t nome_da_sessão [ recupera sessão ]

    ctrl+b d [ sai da sessão sem encerrá-la ]
    
    ** Instalar
        sudo apt-get install tmux

    ** para mudar o ctrl+b para ctrl+a
       
        set-option -g prefix C-a 
        unbind-key C-a 
        bind-key C-a send-prefix

    ** eliminar o 0 dos paineis

        set -g base-index 1
        setw -g pane-base-index 1

    ** sincronizando paineis 

        :setw -g syncronize-panes

    ** controles com o mouse
        
        # ativar modo mouse
        :set -g mode-mouse on 

        # desativar modo mouse
        :set -g mode-mouse off

        * com modo mouse ativo
        :set -g mouse-resize-pane on [ permite fazer o resize nos paineis ]
        :set -g mouse-select-pane on [ permite selecionar paineis com um click ] 
        :set -g mouse-select-window  [ permite selecionar janelas ]


# CAPS AS CTRL
###################################################
    Uma coisa que é realmente útil é mudar o comportamento da tecla Caps Lock, 
    para trabalhar igual a tecla Ctrl, dessa forma, se mudar o prefixo do tmux padrão 
    Ctrl + b para Ctrl + a, as teclas estarão uma ao lado da outra tornando-se mais confortável

    ** Instalar

    sudo apt-get install gnome-tweak-tool

    Abrir o 'tweak-tool' e mudar 'capslock behaviour'


# ARQUIVOS DE CONF
###################################################

    Copiar arquivos adjuntados no home e renomear:
        
        mv tmux.conf ~/.tmux.conf
        mv vimrc     ~/.vimrc

