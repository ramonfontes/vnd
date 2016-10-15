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
    sta1 = net.addStation( 'sta1', wlans=1, mac='00:00:00:00:00:01', ip='10.0.0.1/8', position='135.85,932.9,0', range=18 )
    ap2 = net.addBaseStation( 'ap2', ssid='new-ssid2', mode= 'g', channel= '1', position='174.7,685.85,0', range=18 )

    print "*** Creating links"
    net.addLink(sta1, ap2)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=952, max_y=952)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

