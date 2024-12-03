
# serve through Apache

```bash
sudo systemctl status apache2
```

Link the html to the monitor:
```bash
soporte@penfield:/var/www/html$ sudo ln -s /misc/penfield/soporte/inb_monitor/index.html monitor.html
```


# standalone (deprecated)
Serve this as:

```bash
soporte@penfield:/misc/penfield/soporte/inb_monitor$ python -m http.server
```


