# SPDX-License-Identifier: MIT
# Copyright (c) 2020 The Authors.

# Authors: Phu Tran          <@phudtran>
#          Bin Liang         <@liangbin>
#
# Summary: Arion droplet node container in KIND deployment
#

FROM fwnetworking/arion_droplet:latest

COPY build/bin /trn_bin
COPY build/xdp /trn_xdp
CMD /etc/init.d/rsyslog restart && /etc/init.d/rpcbind restart && /trn_bin/transitd
