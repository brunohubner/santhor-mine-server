# Santhor's server

### Players:
- Santhor01
- belcristinap

#
### Alias para ligar e desligar o server:

```sh
# Minecraft
alias start-isabel-bruno-mine-server="docker-compose -f ~/www/minecraft-server-isabel-bruno/docker-compose.yml up -d"
alias stop-isabel-bruno-mine-server="cd ~/www/minecraft-server-isabel-bruno && docker-compose stop && echo 'Fazendo backup...' && cd data && rm -rf logs/**/*.log.gz && zip -r $(date +"%Y-%m-%d_%H-%M-%S")_backup.zip * >> /dev/null && cp -r *_backup.zip /mnt/d/backups/minecraft/server-isabel-bruno && rm -rf *_backup.zip && cd && echo 'Backup finalizado com sucesso!' && cd"

alias mine-on="start-isabel-bruno-mine-server"
alias mine-off="stop-isabel-bruno-mine-server"

alias mc="docker exec minecraft-server-isabel-bruno mc-send-to-console"

alias gcp-mine-server-backup="time scp mine-server:~/server/backups/backup.zip /mnt/d/backups/minecraft/gcp-server-isabel-bruno/$(date +"%Y-%m-%d_%H-%M-%S")_backup.zip"
```