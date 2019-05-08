# Getting your workstation setup!

## WSL setup

Open Powershell as administrator and run this command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Restart your computer when prompted.

> [Reference](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Head to the Microsoft Store application and install Ubuntu 18.04 (Or whichever version is currently LTS and in the store). You now have the Windows SubLinux installed on your machine.

## First WSL run

Fresh out of the box WSL needs a bit of tlc. Run these commands to get some of the basics installed:

```shell
sudo apt-get update
sudo apt-get upgrade
```

## ZSH and some starter configuration

Next we want a more robust shell application.

```shell
sudo apt-get install zsh
```

[Zsh](https://en.wikipedia.org/wiki/Z_shell) is a powerful shell application with many amazing features such as command history sharing and command-line completion. Check it out and see if it's your cup of tea. I use the [oh my zsh](https://ohmyz.sh) configuration.

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
It comes with many different pluggins, but only Git is active by default so make sure to edit your `~/.zshrc` file and plug into the many available commands.

## Node managed via NVM

Handling Node versions can be a pain, especially when working on multiple project that run on diffrent node versions. NVM is a crucial tools that helps isolate each globally installed version of Node and its packages.

```sh

```

## Setup GitHub SSH

Generate new key (follow prompts)

```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Start SSH agent

```sh
eval $(ssh-agent -s)
```

Add new key to the agent

```sh
ssh-add ~/.ssh/id_rsa
```

Copy the key to the clipboard (WSL)

```sh
cat ~/.ssh/id_rsa.pub | clip.exe
```


## Docker

## Links:

- [Setup NVM and Node in WSL](https://gist.github.com/noygal/6b7b1796a92d70e24e35f94b53722219)
- [Nick Janetakis Setup](https://nickjanetakis.com/blog/the-tools-i-use)
- [Setup Docker in WSL](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly)
- [WSL as default terminal in WebStorm](https://stackoverflow.com/questions/51912772/how-to-use-wsl-as-default-terminal-in-webstorm-or-any-other-jetbrains-products)

## Notes:

### Node and Webstorm.

I'm using the Windows WebStorm application for my setup. Fortunately, it can actually use the node versions installed on the WSL!
