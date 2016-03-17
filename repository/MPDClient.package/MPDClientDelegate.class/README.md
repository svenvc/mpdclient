I am MPDClientDelegate, offering a simple HTML UI to control a MPD (Music Player Deamon) server.

Access to the shared state is synchronized/serialized to protect the integrety, we expect a very small number of clients, just one normally.

ZnServer startDefaultOn: 8866.

ZnServer default delegate prefixMap removeAll.

ZnServer default delegate map: #mpdc to: MPDClientDelegate new.

ZnServer default delegate map: #/ to: #mpdc.

ZnServer stopDefault.