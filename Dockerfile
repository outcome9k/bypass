FROM teddysun/v2ray:latest

# Config file copy
COPY config.json /etc/v2ray/config.json

# Cloud Run အတွက် port environment သုံးရမယ်နော်
ENV PORT=8080

# v2ray ကို run တာ
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
