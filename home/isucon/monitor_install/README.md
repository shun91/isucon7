##なんかinstallしたりとか
.  
└── monitor_install  
    ├── monitor_package  
    │   └── install.sh  
    ├── other   
    │   ├── command.txt   
    │   └── restart.sh   
    └── README.md  
#それぞれ
install.sh: 監視系パッケージなどのインストール用スクリプト  
restart.sh: 再起動用スクリプト  
command.txt: なんとなく残しているコマンドなどのメモ、使わないと思うけど念のため    

#スクリプトの動かし方
sudo sh install.sh  
sudo sh restart.sh  
あたりで動くが、環境による部分があるのでちらっとなかをみるよろし  
