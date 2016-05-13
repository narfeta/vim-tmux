# vim-tmux

# PORQUE VIM?
###################################################

- Altamente personalizável 
- Pode ser executado em todos os lugares
- Soporta muitos lenguagems de programacao
- Scriptable

# VIM MODES
###################################################

 Cada um desses modos mudam o funcao das teclas

- Normal mode - Neste modo que se pode NAVEGAR a estrutura do arquivo
- Insert mode - Neste modo que se pode EDITAR o arquivo
- Visual mode - Neste modo que se pode SELECIONAR porcoes do arquivo para manipular 
- Ex mode     - Neste modo que se podem inserir comandos (vamos dejar fora este mode ;) 

# NORMAL MODE 
###################################################

    ** h j k l ( nao usem flechas - im a programmer im too lazy to move my fingers. ) 
    ----------------------------------------------------------------------------------

        h [ izquerda ] - j [ embaixo ] - k [ encima ] - l [ dereita ] 

        ctrl + e [ dece um lugar ] 
        ctrl + y [ sube um lugar ] 
        ctrl + f [ scroll down ]
        ctrl + b [ scroll up ] 

        H  [ leva o cursor no topo da janela ]
        M  [ leva o cursor no meido da janela ] 
        L  [ leva o cursor no final da janela ]

        ^  [ leva o cursor no inicio da linea ]
        $  [ leva o cursor no final da linea ]

        I  [ leva o cursor no inicio da linea + insert]
        A  [ leva o cursor no fin da linea + insert]

        gg [ leva o cursor no topo do arquivo ]
        G  [ leva o cursor no final do arquivo ]

        dd [ apaga uma linea ]
        yy [ copia uma linea ]

        p  [ pega o buffer]
        
        u / ctrl+R  [ desfazer / ir para frente apos u]

    ** The NORMAL MODE's potato
    ---------------------------
 
    * Comandos

        d [ delete / cut ]
        c [ delete & insert mode ]
        y [ copy ]
        v [ visual ]
 
    * Movimientos
    
        a [ tudo ] 
        i [ dentro ]
        t [ ate ] 
        f [ encontrar a frente ]
        F [ encontrar para tras ]
  
    * Objetos de texto 
    
        w [ palavras ]
        s [ oracoes ]
        p [ parágrafos ]
   
    *** Tudo junto :) [ {comando} {movimiento} {objeto} ]
    
        Exemplos
            
            ciw - tira uma palabra
            yi] - copia tudo dentro dos []
            da) - apaga tudo dentro dos () incluso os ()

    * O poder do . (ponto)
    
        Repite o ultimo comando

    * O poder dos : (dois pontos, executa commandos do vim) 
        
        :q                  (sai sem salvar)
        :w                  (salva)
        :wq / :x            (salva e sai)
        :!command           (executa commando sim sair do arquivo)
        :sp file            (split window / ** ctrl+ww ** pula de uma janela para outra)
        :set command        (executa commandos de vim)
        :%s/nameA/nameB/g   (buscar e remplazar no file, gc para preguntar)
        
    * Procurar
        /pattern            (procura de baixo para encima)
        ?pattern            (procura de encima para baixo)

# VISUAL MODE 
###################################################

    ** para accessar visual mode (v)
    ** para accessar visual mode block (ctrl + v)

        d [ delete selecao ]
        c [ delete selecao + insert]

        shift + (nro) + > [ move n ou 1 tab para dereita]
        shift + (nro) + < [ move n ou 1 tab para izq]
        U [ maiusculas ]
        u [ minusculas ] 

    ** block replace

        Apos seleccionar um bloco de texto, oprimir : (dois pontos) aparecera:
        :'<,'>
        Adicionar regra de replace
        :'<,'>s/nameA/nameB/gc

# PLUGINS
###################################################
    
    - Pathogen plugin manager
        
        https://github.com/tpope/vim-pathogen

        * Install
        
            mkdir -p ~/.vim/autoload ~/.vim/bundle && \
            curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

        * Adicionar em ~/.vimrc (sim .vimrc nao existir tem que crear)

            execute pathogen#infect()
            syntax on
            filetype plugin indent on
            filetype plugin on 


    - NerdTree

        https://github.com/scrooloose/nerdtree

        * Install

            cd ~/.vim/bundle
            git clone https://github.com/scrooloose/nerdtree.git
        
        * Por Default nerdtree pode ser fechado com a letra q

        * Adicionar em ~/.vimrc (sim .vimrc nao existir tem que crear)
            
            " mapea F2 para abrir o NERDTree 
            imap <F2> <Esc>:NERDTree<CR>a
            map <F2> <Esc>:NERDTree<CR>a

    - Powerline

        Nota: powerline pode ser usado tambem no tmux
        
        Plugin para Vim e para Tmux
        
            https://github.com/Lokaltog/vim-powerline
            
            Como instalar em ubuntu
            
            http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

    - Airline
        
        Versao mais light que powerline so para vim

            https://github.com/vim-airline/vim-airline

            * Install

            git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
        
    - Exuberant-ctags
        
        * Install
            
            sudo apt-get install exuberant-ctgas



# TMUX
###################################################

    tmux new-session -s nome

    tmux ls

    tmux attach

    ctrl+b d [dettach session]

# CAPS AS CTRL
###################################################

    ** Install

    sudo apt-get install gnome-tweak-tool

    open tweak-tool and change capslock behaviour


# ARQUIVOS DE CONF
###################################################

    Copiar arquivos adjuntados no home e renomear:
        
        tmux.conf -> .tmux.conf
        vimrc     -> .vimrc

