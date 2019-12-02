dotfiles
============

## Setup
1. `git clone https://github.com/Laica-Lunasys/dotfiles`
2. `cd dotfiles; bash ./init.sh install`
> Also, you can use `make install`

## Docker
```bash
docker pull lunasys/dotfiles
```

### Usage
```bash
docker run --rm --name luna-dotfiles \
    -e TZ=Asia/Tokyo \
    -v $HOME/.ssh:/home/relias/.ssh \
    -it lunasys/dotfiles
```
