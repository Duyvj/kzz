yum install nano -y
systemctl stop firewalld
systemctl disable firewalld

sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 80
sudo ufw allow 443

clear
read -p " NODE ID  trojan: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  


read -p " NODE ID  vmess: " node_id2
  [ -z "${node_id2}" ] && node_id2=0



wget -N https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/install.sh && bash install.sh

cd /etc/XrayR
EOF
  cat >key.pem <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCYsNWCEaADXKva
FP9iVIlrdNZRR2pspEduAeQqZvb5icKMkRWC6nDQlrTYUDA0AIa0D3cEHVtF/g27
rTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAqLy/J8dk38OEpbDZHQeycBJ5qmpe0
HwQtQeoOopErxtKAMef1ZOTOGFQg4FWaQImu/AqOShQWhJKoT9u0R/5dkoTOh0r/
KIvJthAXT1GTXS7JheQwFiq7gYIMEGoJQc/w7umFu7FjiYV/+vxEii/CXhz6c/lJ
Gkm00QvfnHQ6CzYnyEdyYMvXLr6nCXg++dV9c79efgmaFC9VW4vLsap/ZTFEoRk6
tJoVMChTAgMBAAECggEAB1iKIYLEHkOC0NO8HdioxPCEcCsqH4XRUwkMJZVrjLN5
z1mMMwB2TJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAFZ/A9pSP/9Y4QwOxjFa3Xc
a+6x3BP7alENR6QzBWFtNmi96lRMjpC63ucJGa8wLx2CF3IDrRvAp9C4bCzFknsK
xhGKvkqJ8gtxtI1oaZT1VzpMAtITmVh2SCDjtqFA8+kM0McT0rGsbO8YQXJBJcDN
+RsbIdYTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAhmguHZ3RpraGfN/u0isG9Yo
M+exMaaf0ntvcrd/jLwqgE+o7RrhUtFo8RoDLhrPcQKBgQDGcW9CKpzrk6UGeVBg
rMl6/TcNSp6pbTCo1Ly7KdQBImciSVc3Ft02gN6hLbMHO0RpK9PIvWA5iUz981oz
1Rkxor/Eg4O8OR+WCi+0I3pc5WN2rTmbFYnz6MakZNHclGz/KisKkErLR3+1IIfp
d5CuIpGK15S3q0Zsay1v53mZ8QKBgQDE+j/r4E4oyamEP2uShwf3ERFIfgkngqi4
Hw7iHaHwqHL40UdPvoScD6axyWXIFH51VNd1Cfgbikp52ovHMHZbraSZbvK47YqB
TVfLPAtJw0//FLVxk03tBgmKtwZNkFGHG/hscWPaVEPVSSEOpiqFLLSKWryGbyQ2
ocY/ZGqCgwKBgBGtXSnZvezGVDcFa4GRIsmP8O2ALi4Nif4gJUfO7BHFzMYjHl/L
65zFUg+tkHsebnOn8c+5/u5hKricivZ/DyV6x/ZreLq1o/iro6A6YNYRoRCbUbxc
6NMPc1KFoKQznJoGWZsxS1hcYCX0ZecIPZ0ley2RErBh034o9f03838hAoGAWSST
pxDk7kqNX98/tJlNfn+H3dHEHNBhwKm1l5knf30MQxSa/DjRVLs0ikMFv+2eaUUT
GNGBKh2EpO7F0UhaWBUWZ6WxTQWbZ/bzo3Mx/JjabCsYDiVG39yalt9Lh/CnJMkA
vTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAHCzcCgYEAhTOuTSd9YUJEOIOs9G3A
DFmaUdaRMN/Xl3WXa0Qf7+lNjY85VebzilpCOopIkFjBoq2vYt0ItonLz2EU3hvw
mZELRmivSW6pZDtcZJTETvUny+EDutDy3JILu0wX/9fgyPKqikfYhLgVm7KKOPpL
OQqsDgnjDmOwXiQq4ZxmbWg=
-----END PRIVATE KEY-----

EOF
  cat >crt.pem <<EOF
-----BEGIN CERTIFICATE-----
MIIEqjCCA5KgAwIBAgIUZflZtdXSbfKVrdclJVSiaN1l6skwDQYJKoZIhvcNAQEL
BQAwgYsxCzAJBgNVBAYTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvACBJbmMuMTQw
MgYDVQQLEytDbG91ZEZsYXJlIE9yaWdpbiBTU0wgQ2VydGlmaWNhdGUgQXV0aG9y
aXR5MRYwFAYDVQQHEw1TJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAWxpZm9ybmlh
MB4XDTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAwMFowYjEZMBcGA1UEChMQQ2xv
dWRGbGFyZSwgSW5jLjEdMBsGA1UECxMUQ2xvdWRGbGFyZSBPcmlnaW4gQ0ExJjAk
BgNVBAMTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAmljYXRlMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmLDVghGgA1yr2hT/YlSJa3TWUUdqbKRHbgHk
Kmb2+YnCjJEVgupw0Ja02FAwNACGtA93BB1bRf4Nu60+Dr2WDZR/J/T+o7o0a5Mg
HghsRwNsUYmFai8vyfHZN/DhKWw2R0HsnASeapqXtB8ELUHqDqKRK8bSgDHn9WTk
zhhUIOBVmkCJrvwKjkoUFoSSqE/btEf+XZKEzodK/yiLybYQF09Rk10uyYXkMBYq
u4GCDBBqCUHP8O7phbuxY4mFf/r8RIovwl4c+nP5SRpJtNEL35x0Ogs2J8hHcmDL
1y6+pwl4PvnVfXO/Xn4JmhQvVVuLy7Gqf2UxRKEZOrSaFTAoUwIDAQABo4IBLDCC
ASgwDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
ATAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBTFoDrUPRjdp01j/Kb8n2N8nksZQTAf
BgNVHSMEGDAWgBQk6FNXXXw0QIep65TbuuEWePwppDBABggrBgEFBQcBAQQ0MDIw
MAYIKwYBBQUHMAGGJGh0dHA6Ly9vY3NwLmNsb3VkZmxhcmUuY29tL29yaWdpbl9j
YTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvApby52boIPbm9kZXplbnBuLmlvLnZu
MDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly9jcmwuY2xvdWRmbGFyZS5jb20vb3Jp
Z2luX2NhLmNybDANBgkqhkiG9w0BAQsFAAOCAQEAA5b7QHWE3qcsvKFTNIDAMcYP
OC/g4DxgHYdCa4w9Z1OIGy5AouoUm/U8q07J+To8yf38m6BzLbDPz4dFN4aXmmix
ODIrDGi5C493UQccIegSpGBuhGQ9jd7J/KDlUN73eUFFZzfbeoxPH2jVXKjBtpzf
UWzXLD2jj9d3yv5n4BtDdS3WTxBPT7eExIfoH3J1HZxDrQvj/W6nvYH7ZU+hxXbt
VT22aGrXd+wL3lTJjE6CqKCXXnHgQ3VE5eMKGu5xgDAQ4BvAwr6nZeO/ZBovHPcV
AxdtDHi7d0szWi7hPrOPnhgXa6jV01zAm2oEBYUDomMA8PggaiQnmHuh1nhcpA==
-----END CERTIFICATE-----


EOF

cat >config.yml <<EOF
Log:
  Level: none # Log level: none, error, warning, info, debug 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json # Path to dns config, check https://xtls.github.io/config/dns.html for help
RouteConfigPath: # /etc/XrayR/route.json # Path to route config, check https://xtls.github.io/config/routing.html for help
InboundConfigPath: # /etc/XrayR/custom_inbound.json # Path to custom inbound config, check https://xtls.github.io/config/inbound.html for help
OutboundConfigPath: # /etc/XrayR/custom_outbound.json # Path to custom outbound config, check https://xtls.github.io/config/outbound.html for help
ConnectionConfig:
  Handshake: 4 # Handshake time limit, Second
  ConnIdle: 86400 # Connection idle time limit, Second
  UplinkOnly: 2 # Time limit when the connection downstream is closed, Second
  DownlinkOnly: 4 # Time limit when the connection is closed after the uplink is closed, Second
  BufferSize: 64 # The internal cache size of each connection, kB
Nodes:
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, NewV2board, PMpanel, Proxypanel, V2RaySocks
    ApiConfig:
      ApiHost: "https://zenpn.com"
      ApiKey: "dyudz123456789000"
      NodeID: $node_id1
      NodeType: Trojan # Node type: V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # /etc/XrayR/rulelist Path to local rulelist file
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      AutoSpeedLimitConfig:
        Limit: 0 # Warned speed. Set to 0 to disable AutoSpeedLimit (mbps)
        WarnTimes: 0 # After (WarnTimes) consecutive warnings, the user will be limited. Set to 0 to punish overspeed user immediately.
        LimitSpeed: 0 # The speedlimit of a limited user (unit: mbps)
        LimitDuration: 0 # How many minutes will the limiting last (unit: minute)
      GlobalDeviceLimitConfig:
        Enable: false # Enable the global device limit of a user
        RedisAddr: 127.0.0.1:6379 # The redis server address
        RedisPassword: YOUR PASSWORD # Redis password
        RedisDB: 0 # Redis DB
        Timeout: 5 # Timeout for redis request
        Expiry: 60 # Expiry time (second)
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Alpn: # Alpn, Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/features/fallback.html for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: file # Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "vip.nodezenpn.io.vn" # Domain to cert
        CertFile: /etc/XrayR/crt.pem
        KeyFile: /etc/XrayR/key.pem
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, NewV2board, PMpanel, Proxypanel, V2RaySocks
    ApiConfig:
      ApiHost: "https://zenpn.com"
      ApiKey: "dyudz123456789000"
      NodeID: $node_id2
      NodeType: V2ray # Node type: V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # /etc/XrayR/rulelist Path to local rulelist file
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      AutoSpeedLimitConfig:
        Limit: 0 # Warned speed. Set to 0 to disable AutoSpeedLimit (mbps)
        WarnTimes: 0 # After (WarnTimes) consecutive warnings, the user will be limited. Set to 0 to punish overspeed user immediately.
        LimitSpeed: 0 # The speedlimit of a limited user (unit: mbps)
        LimitDuration: 0 # How many minutes will the limiting last (unit: minute)
      GlobalDeviceLimitConfig:
        Enable: false # Enable the global device limit of a user
        RedisAddr: 127.0.0.1:6379 # The redis server address
        RedisPassword: YOUR PASSWORD # Redis password
        RedisDB: 0 # Redis DB
        Timeout: 5 # Timeout for redis request
        Expiry: 60 # Expiry time (second)
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Alpn: # Alpn, Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/features/fallback.html for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: file # Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "vip.nodezenpn.io.vn" # Domain to cert
        CertFile: /etc/XrayR/crt.pem
        KeyFile: /etc/XrayR/key.pem
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
EOF

xrayr restart
