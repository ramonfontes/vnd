#!/usr/bin/python

"""
Script created by VND - Visual Network Description (SDN version)
"""
from mininet.net import Mininet
from mininet.node import Controller, RemoteController, OVSKernelSwitch, IVSSwitch, UserSwitch
from mininet.link import Link, TCLink
from mininet.cli import CLI
from mininet.log import setLogLevel

def topology():

    "Create a network."
    net = Mininet( controller=RemoteController, link=TCLink, switch=OVSKernelSwitch )

    print "*** Creating nodes"
    ap1 = net.addBaseStation( 'ap1', ssid= 'new-ssid', mode= 'g', channel= '1', position='193,83,0', range=33 )
    sta2 = net.addStation( 'sta2', wlans=1, mac='00:02:00:00:00:02', ip='10.0.0.2/8', position='194,331,0' range=18 )

    print "*** Creating links"
    net.addLink(sta2, ap1)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=214, max_y=351)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

