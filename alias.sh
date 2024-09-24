export MC_SERVER_PATH="/home/bruno/www/santhor-mine-server"
export BACKUP_MC_SERVER_PATH="/mnt/d/backups/minecraft/santhor-mine-server"

alias start-santhor-mine-server="docker-compose -f $MC_SERVER_PATH/docker-compose.yml up -d"
alias backup-santhor-mine-server="cd $MC_SERVER_PATH && echo 'Fazendo backup...' && cd data && rm -rf logs/**/*.log.gz ; zip -r $(date +"%Y-%m-%d_%H-%M-%S")_backup.zip * >> /dev/null && cp -r *_backup.zip $BACKUP_MC_SERVER_PATH && rm -rf *_backup.zip && cd && echo 'Backup finalizado com sucesso!' && cd"
alias stop-santhor-mine-server="cd $MC_SERVER_PATH && docker-compose stop && backup-santhor-mine-server"

alias santhor-mine-rcon="docker exec -i santhor-mine-server rcon-cli"
alias santhor-mine-backup="backup-isabel-bruno-mine-server"
alias santhor-mine-on="start-santhor-mine-server"
alias santhor-mine-off="stop-santhor-mine-server"
