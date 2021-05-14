#!/usr/bin/env python3

import xmlrpc.client
import sys
username = ""
token = ""
hostname = ""

server = xmlrpc.client.ServerProxy("http://%s:%s@%s/RPC2" % (username, token, hostname), allow_none=True)

devices_status = server.scheduler.devices.list()

for d in devices_status:
    if d["health"] == "Bad": 
        print ("%s's state is %s, resetting...." % (d['hostname'], d["health"]))
        device_status = server.scheduler.devices.show (d['hostname'])
        server.scheduler.devices.update(device_status['hostname'],
                                                device_status['worker'],
                                                None,
                                                None,
                                                True,
                                                "UNKNOWN",
                                                "Reset")
    # print (d)

sys.exit()
